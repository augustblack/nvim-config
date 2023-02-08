-- disable netrw at the very start of your init.lua (strongly advised) [from nvim-tree]
-- saw this on Xnor's setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- do this or you won't be able to copy text with your mouse selection
-- you'll have to select, then doubled-click, then select "Copy" from drop-down
vim.opt.mouse=""

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
-- require "user.gitsigns" -- this is a bit distracting
require "user.treesitter"
-- require "user.autopairs" -- this will do  () and {} auto matching, we don't want this
-- require "user.comment"
require "user.nvim-tree"
-- require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
-- require "user.project"
require "user.impatient"
-- require "user.illuminate"
-- require "user.indentline"  -- this is annoying by default
require "user.lsp"
require "user.dap"

if vim.call('executable', 'volta')
	then
		vim.g['node_host_prog'] = vim.call('system', 'volta which neovim-node-host | tr -d "\n"')
	end
