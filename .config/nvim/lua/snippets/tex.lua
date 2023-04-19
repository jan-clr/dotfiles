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

s({trig = "tii", dscr = "Expands 'tii' into LaTeX's textit{} command.", snippetType = "autosnippet"},
  fmta("\\textit{<>}",
    {
      d(1, get_visual),
    }
  )
),

s({trig = "([^%a])mm", wordTrig = false, regTrig = true, snippetType = "autosnippet"},
  fmta(
    "<>$<>$",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual),
    }
  )
),

s({trig = '([^%a])ee', regTrig = true, wordTrig = false, snippetType = "autosnippet"},
  fmta(
    "<>e^{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])ddiv', regTrig = true, wordTrig = false, snippetType = "autosnippet"},
  fmta(
    "<>\\nabla\\cdot<>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])grd', regTrig = true, wordTrig = false, snippetType = "autosnippet"},
  fmta(
    "<>\\nabla<>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])crl', regTrig = true, wordTrig = false, snippetType = "autosnippet"},
  fmta(
    "<>\\nabla\\times<>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

}
