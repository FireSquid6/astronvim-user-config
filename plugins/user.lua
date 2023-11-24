return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
          panel = {
            enabled = true,
            auto_refresh = false,
            keymap = {
              jump_prev = "[[",
              jump_next = "]]",
              accept = "<CR>",
              refresh = "gr",
              open = "<M-CR>"
            },
            layout = {
              position = "bottom", -- | top | left | right
              ratio = 0.4
            },
          },
          suggestion = {
            enabled = true,
            auto_trigger = true,
            debounce = 75,
            keymap = {
              accept = "<C-l>",
              accept_word = false,
              accept_line = false,
              next = "<M-]>",
              prev = "<M-[>",
              dismiss = "<C-]>",
            },
          },
          filetypes = {
            yaml = false,
            markdown = false,
            help = false,
            norg = false,
            gitcommit = false,
            gitrebase = false,
            hgcommit = false,
            svn = false,
            cvs = false,
            ["."] = false,
          },
          copilot_node_command = 'node', -- Node.js version must be > 16.x
          server_opts_overrides = {},
        })
    end,
  },
  {
    "wakatime/vim-wakatime",
    event = "InsertEnter",
  },
  {
    "andweeb/presence.nvim",
    event = "InsertEnter",
    config = function()
      require("presence").setup({
        auto_update = true,
        neovim_image_text = "Using astro nvim",
      })
    end
  },
  {
    "nvim-neorg/neorg",
    lazy = false,
    after = "nvim-treesitter",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          -- ["core.esupports.hop"] = {},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
              defrault_workspace = "notes",
            },
          },
          ["core.journal"] = {},
          ["core.summary"] = {},
        },
      }
    end,
  },
  {
    "edluffy/hologram.nvim",
    lazy = false,
  },
  {
    "jbyuki/nabla.nvim",
    lazy = false,
  }
}

