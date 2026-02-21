return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",

    dependencies = {
      -- LSP completion
      "hrsh7th/cmp-nvim-lsp",

      -- buffer words
      "hrsh7th/cmp-buffer",

      -- filesystem paths
      "hrsh7th/cmp-path",

      -- snippets
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      -- snippets collection (optional but recommended)
      "rafamadriz/friendly-snippets",
    },

    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },

        completion = {
          completeopt = "menu,menuone,noselect",
        },

        mapping = cmp.mapping.preset.insert({

          -- scroll docs
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),

          -- trigger completion
          ["<C-Space>"] = cmp.mapping.complete(),

          -- abort
          ["<C-e>"] = cmp.mapping.abort(),

          -- confirm
          ["<CR>"] = cmp.mapping.confirm({
            select = true,
          }),

          -- TAB behaviour
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
        }, {
          { name = "buffer" },
        }),

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
    end,
  },
}
