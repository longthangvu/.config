vim.opt.termguicolors = true
require("bufferline").setup{
    highlights = {
        fill = {
            fg = 'none',
            bg = 'none',
        },
        background = {
            fg = 'none',
            bg = 'none',
        },
        tab = {
            fg = 'none',
            bg = 'none'
        },
        tab_selected = {
            fg = 'none',
            bg = 'none',
        },
        buffer_visible = {
            fg = 'none',
            bg = 'none'
        },
        buffer_selected = {
            fg = 'none',
            bg = 'none',
        },
        separator_selected = {
            fg = 'none',
            bg = 'none'
        },
        separator_visible = {
            fg = 'none',
            bg = 'none'
        },
        separator = {
            fg = 'none',
            bg = 'none'
        },
        indicator_selected = {
            fg = 'none',
            bg = 'none'
        },
        close_button_selected = {
            fg = 'none',
            bg = 'none'
        },
        modified_selected = {
            fg = 'none',
            bg = 'none'
        },
        offset_separator = {
            fg = 'none',
            bg = 'none'
        },
    },
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text="",
                separator= true,
                text_align = "left"
            }
          },
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        buffer_close_icon = '',

        indicator = {
            style = 'underline',
        },
    },
}
