-- this generates a problem in kedro projects: it detects the root_dir as /src because it has setup.py file
-- meanwhile "normal flake8" detects the root_dir as the project level (parent of /src) by convention.
-- wait, it doesn't make sense, pyproject.toml is at the project level...
local opts = {
  root_dir = function(fname)
    local util = require "lspconfig.util"
    local root_files = {
      "setup.cfg",
      "pyproject.toml",
      "setup.py",
      "requirements.txt",
      "Pipfile",
      "manage.py",
      "pyrightconfig.json",
    }
    return util.root_pattern(unpack(root_files))(fname) or util.root_pattern ".git"(fname) or util.path.dirname(fname)
  end,
  single_file_support = true,
}

local servers = require "nvim-lsp-installer.servers"
local server_available, requested_server = servers.get_server "pylsp"
if server_available then
  opts.cmd_env = requested_server:get_default_options().cmd_env
end

require("lvim.lsp.manager").setup("pylsp", opts)
-- dap
-- local dap_install = require "dap-install"
-- dap_install.config("python", {})
