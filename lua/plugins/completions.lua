-- snippets, autocompletion + lsp provided snippets and autocompletion
return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    -- luasnip dependent on cmp_luasnip
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      -- the actual vscode snippets import
      -- community driven repo for snippets in all languages
      "rafamadriz/friendly-snippets",
    },
  },
  {
    -- nvim-cmp dependant on luasnip for snipps
    "hrsh7th/nvim-cmp",

    config = function()
      -- Set up nvim-cmp.
      -- nvim-cmp is the thing that gives the UI popups and stuff for the other plugins to interface with
      local cmp = require("cmp")
      local ls = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            -- will be using luasnip as fuction to expand snippets
            ls.lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif ls.expand_or_jumpable() then
              ls.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif ls.jumpable(-1) then
              ls.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
      cmp.setup.filetype("tex", {
        sources = {
          { name = 'vimtex' },
          { name = 'luasnip' },
        },
          { name = 'buffer' },
      })
    end,
  },
  -- Vimtex completions
  {
    "micangl/cmp-vimtex",
    ft = "tex",
    config = function()
      require('cmp_vimtex').setup({})
    end,
  },

}
