
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

-- Debug
lvim.builtin.which_key.mappings["dU"] = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle UI" }
lvim.builtin.which_key.mappings["de"] = { "<cmd>lua require('dapui').eval()<cr>", "Eval" }
lvim.keys.normal_mode["<C-F5>"] = "<cmd>:lua require('dap').continue()<CR>"
lvim.keys.normal_mode["<F8>"] = "<cmd>:lua require('dap').toggle_breakpoint()<CR>"
lvim.keys.normal_mode["<F9>"] = "<cmd>:lua require('dap').step_over()<CR>"
lvim.keys.normal_mode["<F10>"] = "<cmd>:lua require('dap').step_into()<CR>"

-- Misc
lvim.builtin.which_key.mappings.r = {
  name = "Run current file",
  p = { ":!python %<CR>", "Python" }
}
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
