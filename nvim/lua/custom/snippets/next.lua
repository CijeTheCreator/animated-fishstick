local luasnip = require("luasnip")

local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
local fmt = require("luasnip.extras.fmt").fmt

luasnip.add_snippets("typescript", {
  s("Nxc", fmt([[
  export default function {}({}) {{
    {}
    return {};
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("Nxs", fmt([[
  export default async function {}({}) {{
    {}
    return {};
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
})
