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

require'lualine'.setup{
    options = {
        theme = 'horizon',
    }
}