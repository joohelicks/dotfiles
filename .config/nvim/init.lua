vim.g.mapleader = " "
vim.opt.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.relativenumber = true
vim.o.number = true
vim.o.number = true


vim.g.clipboard = unnamedplus
vim.opt.mouse = "a"
vim.o.title = true
vim.o.hidden = true
vim.opt.wildmenu = true

--vim.wo.cursorline = true

vim.api.nvim_exec(
	[[
set clipboard+=unnamedplus
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set shiftwidth=4
set softtabstop=4
set tabstop=4
set wildmode=longest,list,full
set wildmenu
map <F8> :setlocal spell! spelllang=en_gb<CR>
unmap Y
autocmd FileType cpp          nnoremap <buffer> <F2> :!make<CR>
]],
	true
)
-- KEYMAPS --
local mapkey = vim.api.nvim_set_keymap
mapkey('i', '<c-h>', '<c-w>', {}) -- Ctrl-Backspace

mapkey('n', '<c-s>', ':w<CR>', {})
mapkey('i', '<c-s>', '<Esc>:w<CR>a', {})

mapkey('n', '<leader>cld', ':LspStop<CR>', {}) -- CodeLintDisable
mapkey('n', '<leader>cle', ':LspStart<CR>', {}) -- CodeLintEnable
mapkey('n', '<leader>cmc', ':!make<CR>', {}) -- CodeMakeCompile
mapkey('n', '<leader>cmf', ':!make -B<CR>', {}) -- CodeMakeForce




require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'williamboman/nvim-lsp-installer'

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'

	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'hrsh7th/nvim-cmp'

	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
}
end)


require('findstuff')
require('lsp')
require('nvim-cmp')
