# Copyright (c) 2025 zenywallet

import std/macros
import std/os
import std/strutils

macro minidenticonsJsPatched(): string =
  var org = readFile(currentSourcePath().parentDir() / "../deps/minidenticons/minidenticons.min.js")
  var patched = org.replace("export ", "")
  patched = patched.replace("`", "``")
  newLit(patched)

{.emit: minidenticonsJsPatched().}
