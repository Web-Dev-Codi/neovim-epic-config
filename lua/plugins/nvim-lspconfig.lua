return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Setup language servers.
    local lspconfig = require "lspconfig"
    vim.lsp.set_log_level "debug"
    lspconfig.lua_ls.setup {}
    lspconfig.tsserver.setup {}
    lspconfig.jsonls.setup {}
    -- lspconfig.emmet_ls.setup {}
    lspconfig.tailwindcss.setup {}
    -- lspconfig.cssls.setup {}
    lspconfig.rust_analyzer.setup {
      -- Server-specific settings. See `:help lspconfig-setup`
      settings = {
        ["rust-analyzer"] = {},
      },
    }
    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
  end,
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   opts = {},
  --   config = function()
  --     require("typescript-tools").setup {
  --       separate_diagnostic_server = true,
  --       -- "change"|"insert_leave" determine when the client asks the server about diagnostic
  --       publish_diagnostic_on = "all",
  --       -- array of strings("fix_all"|"add_missing_imports"|"remove_unused"|
  --       -- "remove_unused_imports"|"organize_imports") -- or string "all"
  --       -- to include all supported code actions
  --       -- specify commands exposed as code_actions
  --       expose_as_code_action = {},
  --       -- string|nil - specify a custom path to `tsserver.js` file, if this is nil or file under path
  --       -- not exists then standard path resolution strategy is applied
  --       tsserver_path = "~/.local/share/nvim/mason/bin/typescript-language-server",
  --       -- specify a list of plugins to load by tsserver, e.g., for support `styled-components`
  --       -- (see 💅 `styled-components` support section)
  --       tsserver_plugins = {},
  --       -- this value is passed to: https://nodejs.org/api/cli.html#--max-old-space-sizesize-in-megabytes
  --       -- memory limit in megabytes or "auto"(basically no limit)
  --       tsserver_max_memory = "auto",
  --       -- described below
  --       tsserver_format_options = {},
  --       tsserver_file_preferences = {},
  --       -- locale of all tsserver messages, supported locales you can find here:
  --       -- https://github.com/microsoft/TypeScript/blob/3c221fc086be52b19801f6e8d82596d04607ede6/src/compiler/utilitiesPublic.ts#L620
  --       tsserver_locale = "en",
  --       -- mirror of VSCode's `typescript.suggest.completeFunctionCalls`
  --       complete_function_calls = true,
  --       include_completions_with_insert_text = true,
  --       -- CodeLens
  --       -- WARNING: Experimental feature also in VSCode, because it might hit performance of server.
  --       -- possible values: ("off"|"all"|"implementations_only"|"references_only")
  --       code_lens = "all",
  --       -- by default code lenses are displayed on all referencable values and for some of you it can
  --       -- be too much this option reduce count of them by removing member references from lenses
  --       disable_member_code_lens = true,
  --       -- JSXCloseTag
  --       -- WARNING: it is disabled by default (maybe you configuration or distro already uses nvim-ts-autotag,
  --       -- that maybe have a conflict if enable this feature. )
  --       jsx_close_tag = {
  --         enable = false,
  --         filetypes = { "javascriptreact", "typescriptreact" },
  --       },
  --     }
  --   end,
  -- },
}
