return {
	-- {
	-- 	"vhyrro/luarocks.nvim",
	-- 	priority = 1001, -- this plugin needs to run before anything else
	-- 	opts = {
	-- 		rocks = { "magick" },
	-- 	},
	-- },
	{
		"3rd/image.nvim",
        build = false,
        opts = {},
        config = function()
            require("image").setup({
				backend = "kitty",
                processor = "magick_cli",
				max_height_window_percentage = 50,
				hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.svg" },

            })
        end
		-- dependencies = { "luarocks.nvim" },
		-- config = function()
		-- 	require("image").setup({
		-- 		backend = "kitty",
		-- 		max_height_window_percentage = 50,
		-- 		hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.svg" },
		-- 	})
		-- end,
	},
}
