#!/usr/bin/env bash

(
cd ~
tar czf ~/tmp/xcode-settings.tar.gz \
  Library/Preferences/com.apple.dt.Xcode.plist \
  Library/Developer/Xcode/UserData/CodeSnippets \
  Library/Developer/Xcode/UserData/KeyBindings \
  Library/Developer/Xcode/UserData/FontAndColorThemes \
  Library/Developer/Xcode/Templates
)
