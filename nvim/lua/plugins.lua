local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'kyazdani42/nvim-web-devicons' -- File icons
    use 'L3MON4D3/LuaSnip' -- Snippet
    use 'hoob3rt/lualine.nvim' -- Statusline
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source from buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source from neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'neovim/nvim-lspconfig' -- LSP
    use 'ap/vim-css-color' -- hex color highlight

    use 'nvim-lua/plenary.nvim'
    use 'BurntSushi/ripgrep'
    use 'sharkdp/fd'
    use {
        'nvim-treesitter/nvim-treesitter', -- file tree
        run = ':TSUpdate'
    }
    use { -- search files
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({ -- markdown preview
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    use 'ray-x/web-tools.nvim'
    use 'nanotee/sqls.nvim'
end)
