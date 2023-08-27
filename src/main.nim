# Copyright (c) 2023 zenywallet

import std/jsffi except `&`, `.=`
import jslib
include karax / prelude

var appInst: KaraxInstance

proc afterScript(data: RouterData) =
  console.log("afterScript")

proc appMain(data: RouterData): VNode =
  buildHtml(tdiv):
    tdiv: text "main"

appInst = setInitializer(appMain, "main", afterScript)
appInst.surpressRedraws = false
appInst.redraw()
