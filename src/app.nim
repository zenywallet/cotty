# Copyright (c) 2023 zenywallet

import caprese

const AppJs* = staticScript:
  include main

const AppMinJs* = scriptMinifier(code = AppJs, extern = @[])
