vim.cmd('packadd vim-jetpack')

require('jetpack.packer').add {
    {'tani/vim-jetpack'},
    {'dracula/vim', as = 'dracula'},
    {'nvim-treesitter/nvim-treesitter'},
    {'nvim-treesitter/playground'},
    {'nvim-treesitter/nvim-treesitter-textobjects'},
    {'nvim-treesitter/nvim-treesitter-refactor'},
    {'nvim-treesitter/nvim-treesitter-context'},
    {'nvim-treesitter/nvim-treesitter-highlight'},
    {'nvim-lualine/lualine.nvim'},
    {'ibhagwan/fzf-lua'},
    {'cohama/lexima.vim'},
    {'vim-denops/denops.vim'},
    {'github/copilot.vim'},
    {'goolord/alpha-nvim'}
}

require('104-alpha')

vim.cmd [[colorscheme dracula]]

require('lualine').setup{
    options = {
    theme = 'dracula'
    }
}


require('nvim-treesitter.configs').setup{
    ensure_installed = {'javascript'},
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    },
}
