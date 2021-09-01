local M = {}

M.config = function()
  lvim.builtin.dashboard.custom_section.a = {
    description = { "  Recent Projects    " },
    command = "Telescope projects",
  }
  lvim.builtin.dashboard.custom_section.b = {
    description = { "  Recently Used Files" },
    command = "Telescope oldfiles",
  }
  lvim.builtin.dashboard.custom_section.c = {
    description = { "  Find File          " },
    command = "Telescope find_files",
  }
  lvim.builtin.dashboard.custom_section.d = {
    description = { "  Find Word          " },
    command = "Telescope live_grep",
  }
end

return M
