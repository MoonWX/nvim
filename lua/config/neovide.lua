vim.o.guifont = "FiraCode Nerd Font,Ubuntu Mono:h14"
vim.g.neovide_title_background_color = string.format(
    "%x",
    vim.api.nvim_get_hl(0, {id=vim.api.nvim_get_hl_id_by_name("Normal")}).bg
)
vim.g.neovide_title_text_color = "pink"
vim.g.neovide_cursor_smooth_blink = true