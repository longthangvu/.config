local wk = require("which-key")

wk.register({
    ["<leader>"] = {
        f = {
            name = "+file",
            f = { "<cmd>Telescope find_files<cr>", "Find File" },
            r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
            n = { "<cmd>enew<cr>", "New File" },
        },
        p = {
            name = "+fuzzy",
            f = { "Find File" },
            s = { "Live Grep" },
        },
        t = {
            name = "+tree",
            f = { "Focus Tree" },
            o = { "Open Tree" },
            x = { "Close Tree" },
        }
    },
})
