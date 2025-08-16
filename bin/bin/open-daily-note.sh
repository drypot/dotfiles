#!/usr/bin/env bash

set -euo pipefail

# -e (errexit) : 명령이 0이 아닌 종료코드를 반환하면 즉시 스크립트를 종료한다.
# -u (nounset) : 설정되지 않은 변수(또는 비설정된 위치 매개변수 $1 등)를 참조하면 오류로 간주하고 종료한다.
# -o pipefail  : 파이프라인의 종료코드를 마지막 명령이 아니라, 실패한 명령의 코드로 만든다.
#                파이프라인 내부에서 실패를 잡으려면 반드시 pipefail을 켜라고 한다.

basedir="$HOME/Documents/Memo/Diary/Diary"

fmt="%Y/%m/%Y-%m-%d_%a.md"
relpath="$(LC_TIME=C date +"$fmt")"

file="$basedir/$relpath"

mkdir -p "$(dirname "$file")"

if [ ! -f "$file" ]; then
  printf "# %s\n\n" "$(LC_TIME=ko_KR.UTF-8 date +"%Y-%m-%d %a")" > "$file"
fi

code --reuse-window "$file"
