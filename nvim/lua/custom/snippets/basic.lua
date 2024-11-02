local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
local fmt = require("luasnip.extras.fmt").fmt

luasnip.add_snippets("typescript", {
  s("const", fmt([[
  const {} = {}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("dconst", fmt([[
  const {{{ }}}= {}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("usS", fmt([[
  const [{}, set{}] = useState{}({})
  ]], {
    i(1, ""), i(2, "")
  })),
  s("usR", fmt([[
  const {} = useRef{}({})
  ]], {
    i(1, ""), i(2, "")
  })),
  s("adconst", fmt([[
  const {{{ }}}= await {}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("aconst", fmt([[
  const {} = await {}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("econst", fmt([[
  export const {} = {}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("eaconst", fmt([[
  export const {} = await {}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("clv", fmt([[
  console.log({})
  ]], {
    i(1, ""), i(2, "")
  })),
  s("iff", fmt([[
  if ({}) {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("ell", fmt([[
  else {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("eliff", fmt([[
  else if ({}) {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("map", fmt([[
  .map(({}, {}) => {
    {}
    return {}
  })
  ]], {
    i(1, ""), i(2, "")
  })),
  s("cmap", fmt([[
  const {} = {}.map(({}, {}) => {
    {}
    return {}
  })
  ]], {
    i(1, ""), i(2, "")
  })),
  s("whilee", fmt([[
  while ({}) {{

  {}++
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("intf", fmt([[
  export interface {} {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("funn", fmt([[
  function {}({}):{} {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("funnr", fmt([[
  function {}({}):{} {{
    {}
    return {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("cfunn", fmt([[
  const {} = function ({}):{} {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("cfunnr", fmt([[
  const {} = function ({}):{} {{
    {}
    return {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("arrfunn", fmt([[
  ({}) => {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("arrfunnr", fmt([[
  ({}) => {{
    {}
    return {};
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("ecfunn", fmt([[
  export const {} = function ({}):{} {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("efunn", fmt([[
  export function {}({}):{} {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("eafunn", fmt([[
  export async function {}({}):{} {{
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("efunnr", fmt([[
  export function {}({}):{} {{
    {}
    return {};
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("eafunnr", fmt([[
  export async function {}({}):{} {{
    {}
    return {};
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("ecfunnr", fmt([[
  export const {} = function ({}):{} {{
    {}
    return {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("ecafunnr", fmt([[
  export const {} = async function ({}):{} {{
    {}
    return {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
  s("forr", fmt([[
  for (let {a} = {}, {a} < {b}.length; {a}++) {{
    const {} = {b}[{a}]
    {}
  }}
  ]], {
    i(1, ""), i(2, "")
  })),
})
