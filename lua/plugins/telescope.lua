return {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    version = false,
    dependencies = { 
        'nvim-lua/plenary.nvim', 
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}
     },
    keys = {
        { '<leader>f', '<cmd>Telescope find_files<CR>', desc = "Find Files" }
    },
    opts = {
        config = function()
            require('telescope').setup {
                defaults         = {
                    file_ignore_patterns = { 'node_modules', 'package-lock.json' }
                },
                theme            = 'dropdown',
                initial_mode     = 'insert',
                select_strategy  = 'reset',
                sorting_strategy = nil,
                layout_strategy  = nil,
                layout_config    = {},
                path_display     = { "smart" },
                winblend         = 0,
                border           = {},
                borderchars      = nil,
                color_devicons   = true,
                set_env          = { ["COLORTERM"] = "truecolor" },
                pickers          = {
                    find_files = {
                        hidden = true,
                    },
                    live_grep = {
                        --@usage don't include the filename in the search results
                        only_sort_text = true,
                    },
                    grep_string = {
                        only_sort_text = true,
                    },
                },
                extensions       = {
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    },
                },
            }
        end
    }
}
