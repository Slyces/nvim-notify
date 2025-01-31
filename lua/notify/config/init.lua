local M = {}

require("notify.config.highlights")

local default_config = {
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
}

local user_config = default_config

function M.setup(config)
  local filled = vim.tbl_deep_extend("keep", config or {}, default_config)
  user_config = filled
  require("dapui.config.highlights").setup()
end

function M.icons()
  return user_config.icons
end

return M
