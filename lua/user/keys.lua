
-- keymapping

-- Disable old bindings
lvim.keys.normal_mode["<S-j>"] = ""
lvim.keys.normal_mode["<S-k>"] = ""
lvim.keys.normal_mode["<A-S-s>"] = ""

-- Insert mode
lvim.keys.normal_mode["<C-Space>"] = "i"

-- Buffers
lvim.keys.normal_mode["<C-h>"] = ":BufferPrevious<CR>"
lvim.keys.normal_mode["<C-l>"] = ":BufferNext<CR>"
lvim.keys.normal_mode["<C-x>"] = ":BufferClose<CR>"

-- Lines
lvim.keys.normal_mode["<A-j>"] = ":move +1<CR>"
lvim.keys.normal_mode["<A-k>"] = ":move -2<CR>"

-- Save
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Misc
-- Misc
lvim.builtin.which_key.mappings.a = {
  name = "Misc",
  c = { "<cmd>Telescope commands<cr>", "Commands" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope registers<cr>", "Registers" },
  q = { "<cmd>Telescope quickfix<cr>", "Quickfix" },
  p = {
    "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
    "Colorscheme with Preview",
  },
}
