local M = {}

M.config = function()
  local components = require "core.lualine.components"
  lvim.builtin.lualine.sections.lualine_c = {
    components.diff,
    components.python_env,
    {
      "filename",
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }
  }

  lvim.builtin.lualine.inactive_sections.lualine_a = {}
  lvim.builtin.lualine.inactive_sections.lualine_c = {
    {
      "filename",
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }
  }
end

return M
