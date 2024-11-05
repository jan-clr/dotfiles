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

s({trig = '([^%a])nbl', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Nabla - Expands to the \\nabla command."},
  fmta(
    "<>\\nabla<>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])div', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Divergence - Expands to the \\div command from the physics package."},
  fmta(
    "<>\\div<>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])grd', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Gradient - Expands to the \\grad command from the physics package."},
  fmta(
    "<>\\grad<>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])crl', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Curl - Expands to the \\curl command from the physics package."},
  fmta(
    "<>\\curl<>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])vb', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Vector Bold - Expands to the \\vb command from the physics package."},
  fmta(
    "<>\\vb{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])int3', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Volume Integral in cartesian coordinates."},
  fmta(
    "<>\\int_{V}\\dd[3]{x} <>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])int2', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "General Surface Integral over S."},
  fmta(
    "<>\\int_{S}\\dd[2]{x} <>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])intpv', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Surface Integral over the surface of some Volume V."},
  fmta(
    "<>\\int_{\\partial V}\\dd[2]{x} <>",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])pss', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Partial SubScript - Expands to the \\partial_{} command and places the cursor in the subscipt position."},
  fmta(
  "<>\\partial_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = 'mrm', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Mathrm - Expands to the \\mathrm command."},
  fmta(
  "\\mathrm{<>}",
    {
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])uvec', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Unit VECtor - Expands to the \\vb command with a \\hat."},
  fmta(
  "<>\\hat{\\vb{<>}}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

s({trig = '([^%a])dv', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "derivative - Expands to the \\dv command of the physics package."},
  fmta(
  "<>\\dv{<>}{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual),
      i(2)
    }
  )
),

s({trig = '([^%a])pdv', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "derivative - Expands to the \\dv command of the physics package."},
  fmta(
  "<>\\pdv{<>}{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual),
      i(2)
    }
  )
),

---------------------------
----- Environments
---------------------------

s({trig = '([^%a])anum', regTrig = true, wordTrig = false, snippetType = "autosnippet", dscr = "Alpha Enum - Enumerate environment with alphabetic indexing."},
  fmta(
    [[
      <>\begin{enumerate}[label=\alph*)]
            \item <>
       \end{enumerate}
    ]],
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual)
    }
  )
),

}
