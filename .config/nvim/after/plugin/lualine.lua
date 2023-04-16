local M = {}
M.theme = function()
    local colors = {
        darkgray = "#16161d",
        gray = "#727169",
        innerbg = nil,
        outerbg = "#16161D",
        normal = "#7e9cd8",
        insert = "#98bb6c",
        visual = "#ffa066",
        replace = "#e46876",
        command = "#e6c384",
    }
    return {
        inactive = {
            a = { bg = colors.outerbg, gui = "bold" },
            b = { bg = colors.outerbg },
            c = { bg = colors.innerbg },
        },
        visual = {
            a = { bg = colors.visual, gui = "bold" },
            b = { bg = colors.outerbg },
            c = { bg = colors.innerbg },
        },
        replace = {
            a = { bg = colors.replace, gui = "bold" },
            b = { bg = colors.outerbg },
            c = { bg = colors.innerbg },
        },
        normal = {
            a = { bg = colors.normal, gui = "bold" },
            b = { bg = colors.outerbg },
            c = { bg = colors.innerbg },
        },
        insert = {
            a = { bg = colors.insert, gui = "bold" },
            b = { bg = colors.outerbg },
            c = { bg = colors.innerbg },
        },
        command = {
            a = { bg = colors.command, gui = "bold" },
            b = { bg = colors.outerbg },
            c = { bg = colors.innerbg },
        },
    }
end

require('lualine').setup({
    options = {
        theme = M.theme(),
    },
})
