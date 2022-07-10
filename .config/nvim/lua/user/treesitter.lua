local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"c", "cpp", "rust", "python"},
  sync_install = false, 
  autopairs = {
    enable = true, 
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

