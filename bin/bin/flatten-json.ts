#!/usr/bin/env node

import fs from 'fs'
import { Readable } from 'stream'

/*

  입력 예.

  {
    "user": {
      "name": "Snoopy",
      "roles": ["admin", "editor"],
      "profile": {
        "email": "snoopy@example.com",
        "active": true
      }
    }
  }

  출력 예.

  user.name=Snoopy
  user.roles.0=admin
  user.roles.1=editor
  user.profile.email=snoopy@example.com
  user.profile.active=true

*/

function flatten(data: unknown, prefix = ''): void {

  // 데이터가 객체일 경우
  if (typeof data === 'object' && data !== null) {

    if (Array.isArray(data)) {
      // 데이터가 배열일 경우
      for (const [index, item] of Object.entries(data)) {
        const newPrefix = prefix ? `${prefix}.${index}` : `${index}`
        flatten(item, newPrefix)
      }
    } else {
      // 데이터가 일반 객체일 경우
      for (const [key, item] of Object.entries(data)) {
        const newPrefix = prefix ? `${prefix}.${key}` : key
        flatten(item, newPrefix)
      }
    }

  } else {
    // 데이터가 원시 값(string, number, boolean, null)일 경우
    console.log(`${prefix}=${data}`)
  }

}

async function processStream(stream: Readable, sourceName: string): Promise<void> {
  let jsonStr = ''
  stream.setEncoding('utf8')

  try {
    for await (const chunk of stream) {
      jsonStr += chunk
    }
    const obj = JSON.parse(jsonStr)
    flatten(obj)
  } catch (error) {
    console.error(`error: '${sourceName}', ${(error as Error).message}`)
  }
}

async function main(): Promise<void> {
  // node, script.ts를 제외한 실제 커맨드라인 인자들
  const args = process.argv.slice(2)

  if (args.length > 0) {
    for (const filePath of args) {
      if (!fs.existsSync(filePath)) {
          console.error(`file not found: ${filePath}`)
          continue
      }
      const fileStream = fs.createReadStream(filePath)
      await processStream(fileStream, filePath)
    }
  } else {
    await processStream(process.stdin, 'stdin')
  }
}

main()
