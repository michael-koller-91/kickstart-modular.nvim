return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup()
      require('nvim-treesitter').install { 'bash', 'c', 'diff', 'lua', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'lua', 'vim', 'vimdoc', 'query' },
        callback = function(args)
          vim.treesitter.start(args.buf)
        end,
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
