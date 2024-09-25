return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
	 config = function()	
		
      local neotree = require("neo-tree")
		neotree.setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_hidden = false,
				},
				follow_current_file = {
					enabled = true,
				}
			}
		})
		
		local map = vim.api.nvim_set_keymap
		-- Move to previous/next
		map("n", "<C-m>", "<Cmd>Neotree toggle<CR>", {})
		-- map("n", "<C-o>", "<Cmd>Neotree focus<CR>", {})
	 end

}
