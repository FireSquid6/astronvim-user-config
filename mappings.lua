-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },


    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker( function(bufnr) require("astronvim.utils.buffer").close(bufnr) end) end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- NEORG BINDINGS
    ["<leader>j"] = {name="󰠮 Neorg"},
    ["<leader>jm"] = {"<cmd>Neorg<cr>", desc="Neorg menu"},
    ["<leader>jh"] = {"<cmd>Neorg index<cr>", desc="Home file"},
    ["<leader>jg"] = {"<cmd>e ~/Dropbox/notes/gtd/index.norg<cr>", desc="GTD Home file"},
    ["<leader>ji"] = {"<cmd>e ~/Dropbox/notes/gtd/in.norg<cr>", desc="GTD In file"},
    ["<leader>jn"] = {"<cmd>e ~/Dropbox/notes/gtd/next.norg<cr>", desc="GTD Next file"},
    ["<leader>jd"] = {"<cmd>Neorg inject-metadata<cr>", desc="Generate metdata"},
    ["<leader>jk"] = {"<cmd>e ~/Dropbox/notes/notebook/index.norg<cr>", desc="Notebook"},

    ["<leader>jj"] = {name="Journal"},
    ["<leader>jju"] = {"<cmd>Neorg journal toc update<cr>", desc="Update journal table of contents"},
    ["<leader>jjo"] = {"<cmd>Neorg journal toc open<cr>", desc="Open journal table of contents"},
    ["<leader>jjt"] = {"<cmd>Neorg journal today<cr>", desc="Journal today"},
    ["<leader>jjy"] = {"<cmd>Neorg journal yesterday<cr>", desc="Journal yesterday"},
    ["<leader>jjr"] = {"<cmd>Neorg journal tomorrow<cr>", desc="Journal tomorrow"},

    ["<leader>jb"] = {"<cmd>Neorg return<cr>", desc="Neorg return"},


    ["<leader>m"] = { "<cmd>lua require(\"nabla\").popup()<cr>", desc="Nabla Popup"},
    ["<leader>a"] = { "<cmd>AerialOpen<cr>", desc="Toggle Aerial"},


    ["<leader>th"] = {},
    ["<leader>tb"] = { name="ToggleTerm Bottom" },
    ["<leader>tb1"] = { "<cmd>1ToggleTerm direction=horizontal size=20<cr>", desc="ToggleTerm Bottom 1" },
    ["<leader>tb2"] = { "<cmd>2ToggleTerm direction=horizontal size=20<cr>", desc="ToggleTerm Bottom 2" },
    ["<leader>tb3"] = { "<cmd>3ToggleTerm direction=horizontal size=20<cr>", desc="ToggleTerm Bottom 3" },
    ["<leader>tf"] = { "<cmd>4ToggleTerm direction=float size=20<cr>", desc="ToggleTerm Floating" },
    ["<leader>`"] = { "<cmd>TermSelect<cr>", desc="Select Terminal" },
    ["<leader>;"] = { "<cmd>ToggleTermToggleAll<cr>", desc="Toggle All Terminals" },


    ["<C-h>"] = { "<C-w>h", desc = "Window left"},
    ["<C-j>"] = { "<C-w>j", desc = "Window down"},
    ["<C-k>"] = { "<C-w>k", desc = "Window up"},
    ["<C-l>"] = { "<C-w>l", desc = "Window right"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<esc>"] = { "<C-\\><C-n>", desc = "Exit Terminal" },

  },
}
