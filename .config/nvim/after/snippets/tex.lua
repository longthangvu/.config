local ls = require("luasnip")

local math_inl = ls.parser.parse_snippet({ trig = "mk", name = "Math", priority = 10 }, "$ ${1:${TM_SELECTED_TEXT}} $$0")

local bra_snip = ls.parser.parse_snippet({ trig = "bra", name = "Bra", priority = 10 }, "\\bra{$1}$0")
local ket_snip = ls.parser.parse_snippet({ trig = "ket", name = "Ket", priority = 10 }, "\\ket{$1}$0")

ls.add_snippets("tex", { math_inl}, {
    type = "autosnippets",
})

ls.add_snippets("tex", {bra_snip})
ls.add_snippets("tex", {ket_snip})
