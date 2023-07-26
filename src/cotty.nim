# Copyright (c) 2023 zenywallet

import caprese

server(ssl = true, ip = "0.0.0.0", port = 8009):
  routes(host = "localhost"):
    return send("Hello!".addHeader())

serverStart()
