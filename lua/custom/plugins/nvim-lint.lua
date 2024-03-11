local utils = require("custom.utils")

return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- Swiftlint.
    local pattern = "[^:]+:(%d+):(%d+): (%w+): (.+)"
    local groups = { "lnum", "col", "severity", "message" }
    local defaults = { ["source"] = "swiftlint" }
    local severity_map = {
      ["error"] = vim.diagnostic.severity.ERROR,
      ["warning"] = vim.diagnostic.severity.WARN,
    }

    lint.linters.swiftlint = {
      cmd = "swiftlint",
      stdin = false,
      args = {
        "lint",
        "--force-exclude",
        "--use-alternative-excluding",
        "--config",
        function()
          return utils.find_config(".swiftlint.yml") or
              os.getenv("HOME") ..
              "/.config/nvim/.swiftlint.yml"
        end,
      },
      stream = "stdout",
      ignore_exitcode = true,
      parser = require("lint.parser").from_pattern(pattern, groups, severity_map, defaults),
    }

    lint.linters_by_ft = {
      swift = { "swiftlint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
      group = lint_augroup,
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
