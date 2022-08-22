local telescope = require('telescope')

telescope.setup {
    autopairs = {
        enable = true,
    }
}

-- To get fzf loaded and working with telescope,
-- you need to call load_extension, somewhere after
-- the setup function.
telescope.load_extension('fzf')
