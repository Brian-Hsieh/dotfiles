return {
	-- Dashboard
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = function()
			local logo = [[
          ________________________                                     
       8 /__////__////__////__////       |=|                           
      7 ////__////__////__////__/ o ?!    U                            
     6 /__////__////__////__////  A      [_/&} !!                      
    5 ////__////__////__////__/  [_]       ‾A                         .
   4 /__////__////__////__////       o     [_]              (/)    .   
  3 ////__////__////__////__/    +  )"(                      U  .      
 2 /__////__////__////__////    \‾/ )‾(                     [_]        
1 ////__////__////__////__/     )‾( [_]                                
   a  b  c  d  e  f  g  h       [_]                                    
      ]]

			logo = string.rep("\n", 8) .. logo .. "\n\n"

			local opts = {
				theme = "hyper",
				hide = {
					-- this is taken care of by lualine
					-- enabling this messes up the actual laststatus setting after loading a file
					statusline = false,
				},
				config = {
					header = vim.split(logo, "\n"),
          -- stylua: ignore
          shortcut = {
            { action = "Telescope find_files",                                     desc = " Find file",        key = "f" },
            { action = function()
              require("telescope.builtin").find_files({
                cwd = vim.fn.stdpath("config"),
              })
            end, desc = " Config",           key = "c" },
            { action = 'lua require("persistence").load()',                        desc = " Restore Session",  key = "s" },
            { action = "Lazy",                                                     desc = " Lazy",             key = "l" },
            { action = "qa",                                                       desc = " Quit",             key = "q" },
          },
					project = { limit = 5 },
					mru = { limit = 5 },
					footer = {
						"",
						"Be curious. Keep exploring.",
					},
				},
			}

			-- close Lazy and re-open when the dashboard is ready
			if vim.o.filetype == "lazy" then
				vim.cmd.close()
				vim.api.nvim_create_autocmd("User", {
					pattern = "DashboardLoaded",
					callback = function()
						require("lazy").show()
					end,
				})
			end

			return opts
		end,
	},

	-- lualine
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			sections = {
				lualine_y = {
					{ "progress", separator = " ", padding = { left = 1, right = 0 } },
					{ "location", padding = { left = 0, right = 1 } },
					{ "hostname" },
				},
			},
		},
	},

	{
		"folke/snacks.nvim",
		opts = {
			dashboard = {
				enabled = false,
				preset = {
					header = [[
          ________________________                                     
       8 /__////__////__////__////       |=|                           
      7 ////__////__////__////__/ o ?!    U                            
     6 /__////__////__////__////  A      [_/&} !!                      
    5 ////__////__////__////__/  [_]       ‾A                         .
   4 /__////__////__////__////       o     [_]              (/)    .   
  3 ////__////__////__////__/    +  )"(                      U  .      
 2 /__////__////__////__////    \‾/ )‾(                     [_]        
1 ////__////__////__////__/     )‾( [_]                                
   a  b  c  d  e  f  g  h       [_]                                    
      ]],
				},
			},
		},
	},
}
