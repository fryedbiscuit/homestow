local nest = require("nest")

nest.applyKeymaps {
	{ ",", 
		{ "c", "<cmd>tabnew<cr><cmd>e ~/.config/nvim/init.lua<cr>" },
	},

	-- Make
	{ "<leader>m", {
		{'m', "<cmd>w<cr><cmd>!make<cr>"},
		{'r', "<cmd>w<cr><cmd>!make run<cr>"},
	}},
	-- FZF
	{'<leader>', 
		{ 'f', {
			{'f', "<cmd>FzfLua files<cr>"},
			{'F', "<cmd>FzfLua filetypes<cr>"},
			{'b', "<cmd>FzfLua buffers<cr>"},
			{'g', "<cmd>FzfLua grep<cr>"},
		},
	}},
	-- Buffers
	{'b',
		{'n', "<cmd>bnext<cr>"},
		{'p', "<cmd>bprevious<cr>"},
		{'d', "<cmd>bdelete<cr>"},
	},
	-- Oil
	{'-', "<cmd>Oil<cr>"},

	-- Vimwiki
	{'<C-Minus>', "<cmd>VimWikiDecrementListItem<cr>"}
}
