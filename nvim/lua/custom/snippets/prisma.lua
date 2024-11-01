local luasnip = require("luasnip")

local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
luasnip.add_snippets("typescript", {
s("pff", {
  t("await prisma."),
  i(1),
  t(".findFirst({"),
  t("where: { "),
  i(2),
  t(' : '),
  i(3),
  t(' },});'),
}),
s("pfm", { --prisma find many
  t("await prisma."),
  i(1),
  t(".findMany()"),
}),
s("pfmw", { --prisma find many
  t("await prisma."),
  i(1),
  t(".findMany({"),
  t("where: { "),
  i(2),
  t(' : '),
  i(3),
  t(' },});'),
}),
s("pc", { --prisma create
  t("await prisma."),
  i(1),
  t(".create({"),
  t(" data : "),
  i(2),
  t('});'),
}),
s("pd", { --prisma delete
  t("await prisma."),
  i(1),
  t(".delete({"),
  t("where: { "),
  i(2),
  t(' : '),
  i(3),
  t(' },});'),
}),
s("pu", { --prisma update
  t("await prisma."),
  i(1),
  t(".update ({"),
  t("where: { "),
  i(2),
  t(' : '),
  i(3),
  t(' },'),
  t(" data : "),
  i(4),
  t('  });'),
}),
})


