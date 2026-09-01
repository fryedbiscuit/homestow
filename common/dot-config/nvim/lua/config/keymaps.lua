local nest = require("nest")
local nest = require("nest")

local function toggle_loclist()
  local is_open = vim.fn.getloclist(0, { winid = 0 }).winid ~= 0

  if is_open then
    vim.cmd("lclose")
  elseif #vim.fn.getloclist(0) > 0 then
    vim.cmd("lopen")
  else
    vim.notify("Location list is empty", vim.log.levels.WARN)
  end
end

nest.applyKeymaps {
	{ ",", 
		{ "c", "<cmd>tabnew<cr><cmd>e ~/.config/nvim/init.lua<cr>" },
		{ "k", "<cmd>tabnew<cr><cmd>e ~/.config/nvim/lua/config/keymaps.lua<cr>" },
	},

	--Location list
	{ "<C-l><C-l>", toggle_loclist},
	{ "<C-j>", "<cmd>lnext<CR>", options = { desc = "Next location list item", silent = true } },
	{ "<C-k>", "<cmd>lprev<CR>", options = { desc = "Previous location list item", silent = true } },
	{ '<leader>cd', "<cmd>CocDiagnostics<cr>"},

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
	{'b', {
		{'n', "<cmd>bnext<cr>"},
		{'p', "<cmd>bprevious<cr>"},
		{'d', "<cmd>bdelete<cr>"},
	}},
	-- Oil
	{'-', "<cmd>Oil<cr>"},

	-- Vimwiki
	{'<C-Minus>', "<cmd>VimWikiDecrementListItem<cr>"}
}
