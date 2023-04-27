require('onedark').setup {
    term_colors = true,
    style = 'dark',
    colors = {
        dark_bg1 = "#31353f",
        darker_bg1 = "#282c34",
        dark_fg = "#abb2bf",
        darker_fg = "#a0a8b7",
    },
    highlights = {
        Conceal = {fg = '$dark_fg', bg = '$dark_bg1'},
    }
}

require("onedark").load()
