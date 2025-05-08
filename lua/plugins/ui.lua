-- Theme
vim.cmd("colorscheme tokyonight")

-- Lualine (status bar)
require("lualine").setup({
  options = {
    theme = "tokyonight",
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = { "filetype", "encoding", "fileformat" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})

-- nvim-web-devicons (file icons)
require("nvim-web-devicons").setup {
  default = true;
}
