package = "kongheader"
version = "1.0-4"

source = {
  url = "git://github.com/yesinteractive/kongheader.git"
}

description = {
  summary = "Converts JWT claims to Headers to allow for Routing by JWT Claim and/or upstream JWT Claim consumption by header",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1-1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kongheader.handler"] = "plugin/handler.lua",
    ["kong.plugins.kongheader.schema"] = "plugin/schema.lua",
  }
}
