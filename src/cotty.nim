# Copyright (c) 2023 zenywallet

import std/strformat
import caprese

server(ssl = true, ip = "0.0.0.0", port = 8009):
  routes(host = "localhost"):
    get "/":
      return send("Hello!".addHeader())

    let urlText = sanitizeHtml(reqUrl)
    return send(fmt"Not found: {urlText}".addDocType().addHeader(Status404))

serverStart()
