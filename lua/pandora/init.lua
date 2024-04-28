

local pandora = {}
local theme = require('pandora.theme')

pandora.load = function()
  vim.cmd('hi clear') --neteja hihglights?
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true;
  vim.g.colors_name = 'pandora';
  vim.o.background = 'light'

  theme.set_highlights()

end
return pandora
