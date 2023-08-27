# Copyright (c) 2023 zenywallet

import caprese

const CottyIndexHtml* = staticHtmlDocument:
  buildHtml(html):
    head:
      meta(charset="utf-8")
      title: text "Cotty"
      script(src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.min.js")
      link(rel="stylesheet", type="text/css", href="https://cdn.jsdelivr.net/npm/fomantic-ui@2.9.2/dist/semantic.min.css")
      script(src="https://cdn.jsdelivr.net/npm/fomantic-ui@2.9.2/dist/semantic.min.js")
    body:
      text "Hello!"
      tdiv(id="main")
      script(src="/js/app.js")
