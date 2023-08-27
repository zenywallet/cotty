# Copyright (c) 2023 zenywallet

import std/strformat
import caprese
import index
import app
import favicon

server(ssl = true, ip = "0.0.0.0", port = 8009):
  routes(host = "localhost"):
    get "/":
      return response(content(CottyIndexHtml, "html"))

    get "/js/app.js":
      return response(content(AppMinJs, "js"))

    get "/favicon.ico":
      return response(content(FaviconBin, "ico"))

    let urlText = sanitizeHtml(reqUrl)
    return send(fmt"Not found: {urlText}".addDocType().addHeader(Status404))

serverStart()
