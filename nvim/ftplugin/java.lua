
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4

local home = os.getenv "HOME"
local JDTLS_INSTALL = home .. "/.local/share/nvim/mason/packages/jdtls"
local WORKSPACE_PATH = "/home/tv3n/code/"

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = WORKSPACE_PATH .. project_name


local config = {
    cmd = {
      JDTLS_INSTALL .. '/bin/jdtls',
      "-data", workspace_dir,
    },
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}

require('jdtls').start_or_attach(config)

