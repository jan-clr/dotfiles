local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local helpers = require("helpers.luasnip_helpers")
local get_visual = helpers.get_visual

return {

s({trig = "main", wordTrig = true},
  fmta(
    [[
    def main():
        <>


    if __name__ == '__main__':
        main()
    ]],
    {
      d(1, get_visual),
    }
  )
),


}
