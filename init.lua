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
