#!/usr/bin/env bash

(

cd ~/Downloads

cp Library/Preferences/com.apple.dt.Xcode.plist ~/Library/Preferences/

cp -R Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/
cp -R Library/Developer/Xcode/UserData/KeyBindings ~/Library/Developer/Xcode/UserData/
cp -R Library/Developer/Xcode/UserData/FontAndColorThemes ~/Library/Developer/Xcode/UserData/

cp -R Library/Developer/Xcode/Templates ~/Library/Developer/Xcode/

)
