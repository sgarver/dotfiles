
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'iceberg',
  },
  sections = {
      lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}

