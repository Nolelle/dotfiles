
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end

npairs.setup {
    check_ts = true,
    ts_config = {
        lua = {"string", "source"},
        javascript = {"string", "template_string"},
        java = false,
    },
    disable_filetype = {"TelescopePrompt", "spectre_panel"},
    fast_wrap = {
        check_coma =true,
        hightlight = "PmenuSel",
        highlight_grey = "LineNr",
    },
}

-- nvim cmp integration 
-- -- If you want insert `(` after select function or method item

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
