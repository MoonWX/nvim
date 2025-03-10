require'nvim-tree'.setup {}

require'bufferline'.setup {
    options = {
        indicator = {
            style = "underline" -- "underline"/"icon"/"none"
        },
        diagnostics = "nvim_lsp", -- "nvim_lsp"/"coc"/false
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " "
                    or (e == "warning" and " " or " ")
                s = s .. n .. sym
            end
            return s
        end,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }
        },
        pick = {
            alphabet = "abcdefghijklmopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ1234567890",
        },
    }
}

local navic = require("nvim-navic")

navic.setup {
    icons = {
        File          = "󰈙 ",
        Module        = " ",
        Namespace     = "󰌗 ",
        Package       = " ",
        Class         = "󰌗 ",
        Method        = "󰆧 ",
        Property      = " ",
        Field         = " ",
        Constructor   = " ",
        Enum          = "󰕘",
        Interface     = "󰕘",
        Function      = "󰊕 ",
        Variable      = "󰆧 ",
        Constant      = "󰏿 ",
        String        = "󰀬 ",
        Number        = "󰎠 ",
        Boolean       = "◩ ",
        Array         = "󰅪 ",
        Object        = "󰅩 ",
        Key           = "󰌋 ",
        Null          = "󰟢 ",
        EnumMember    = " ",
        Struct        = "󰌗 ",
        Event         = " ",
        Operator      = "󰆕 ",
        TypeParameter = "󰊄 ",
    },
    lsp = {
        auto_attach = true,
        preference = nil,
    },
    highlight = false,
    separator = " > ",
    depth_limit = 0,
    depth_limit_indicator = "..",
    safe_output = true,
    lazy_update_context = false,
    click = false,
    format_text = function(text)
        return text
    end,
}

require'lualine'.setup{
    options = {
        theme = 'horizon',
    },
    winbar = {
        lualine_c = {
            {
            function()
                return navic.get_location()
            end,
            cond = function()
                return navic.is_available()
            end
            },
        }
    },
}

require("treesitter-context").setup({
    enable = true,
    max_lines = 3,
})