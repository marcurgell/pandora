local hl = vim.api.nvim_set_hl
local theme = {}

--[[

cal tenir instal·lat el treesitter per els highlights especifics de cada
llenguatge:
- :Inspect sobre lelement per veure quin highliht aplica. :Inspect obre una 
llista d'elements. El primer element de Semantic Tokens es el que hem d'usar.

]]--

theme.set_highlights = function()

  local n = 'NONE';
  local CursorDarkDark = '#E5EBF1';
  local CursorDark = '#6F6F6F';
  local CursorLight = '#767676';
  local GrayDisabled = '#d2d2d2';

  local mainGreen = '#b6fcd9';

  hl(0, 'Normal', { fg = '#343434' ,bg =  '#FFFFFF'})
  hl(0, 'ColorColumn', { fg = n, bg = CursorDark  })
  hl(0, 'Cursor', { fg = CursorDark, bg = CursorLight  })
  hl(0, 'EndOfBuffer', { fg = GrayDisabled, bg = n  })
  hl(0, 'ErrorMsg', { fg = '#FF0000', bg = n  })
  hl(0, 'WinSeparator', { fg = mainGreen , bg = mainGreen  })
  hl(0, 'SignColumn', { fg = n , bg =  '#FFFFFF' })
  hl(0, 'IncSearch', { fg = n , bg =  mainGreen })
  hl(0, 'LineNr', { fg = GrayDisabled , bg =  n })
  hl(0, 'MatchParen', { fg = n , bg =  mainGreen })

  hl(0, 'Pmenu', { fg = n , bg =  GrayDisabled })
  hl(0, 'PmenuSel', { fg = n, bg = mainGreen })
  hl(0, 'PmenuSbar', { fg = 'NONE', bg = mainGreen })
  hl(0, 'PmenuThumb', { fg = 'NONE', bg = mainGreen })
  hl(0, 'Question', { fg = 'NONE', bg = mainGreen })
  hl(0, 'Seach', { fg = 'NONE', bg = mainGreen })

  hl(0, 'Visual', { fg = 'NONE', bg = mainGreen })
  hl(0, 'VisualNON', { fg = 'NONE', bg = mainGreen })
  hl(0, 'WildMenu', { fg = n, bg = mainGreen })

   --Code => C/C++
  local pcg = '#09b961'; --constant green
  local pcb = '#1a2f78'; --constant blue
  local vc = '#bf9a19'; --variable type color
  local fh = '#017a7a'; --header function color
  local cp = '#9c0582'; --class purple
  local gv = '#80130f'; -- private variable granate
  local b = '#000000'; -- Black

  hl(0, '@punctuation.special', { fg = '#418262', bg = n })
  hl(0, '@type.builtin', { fg = vc, bg = n }) 
  hl(0, '@comment', { fg = '#019149', bg = n, italic=true})

  --hl(0, '@variable', { fg = pcb, bg = n })
  --hl(0, '@variable.c', { fg = pcb, bg = n })
  hl(0, '@lsp.type.variable.c', { fg = pcb, bg = n })
  hl(0, '@lsp.type.variable.cpp', { fg = pcb, bg = n })
  hl(0, '@lsp.type.class.cpp', { fg = cp, bg = n,bold = false })
  hl(0, '@lsp.typemod.class.globalScope.cpp', { fg = cp , bg = n,bold = false})
  hl(0, '@lsp.type.namespace.cpp', { fg = cp, bg = n,bold = false })
  hl(0, '@lsp.type.parameter.cpp', { fg = pcb, bg = n,bold = false })
  hl(0, '@lsp.type.type.cpp', { fg = pcb, bg = n,bold = false })
  hl(0, '@lsp.type.property.cpp', { fg = gv, bg = n,bold = false })
  hl(0, '@lsp.typemod.variable.static.cpp', { fg = gv, bg = n,bold = false })

  --hl(0, '@constant', { fg = '#80130f', bg = n })
  hl(0, '@constant.builtin.cpp', { fg = vc, bg = n })
  hl(0, '@lsp.type.enumMember.c', { fg = cp, bg = n })
  hl(0, '@lsp.type.enumMember.cpp', { fg = cp, bg = n })
  --hl(0, '@type', { fg = pcb, bg = n,bold=true })
  hl(0, '@string', { fg = '#078f4b', bg = n })
  hl(0, '@number', { fg = pcb, bg = n }) --literal numbers
  hl(0, '@keyword.c', { fg = vc, bg = n }) -- enum?
  hl(0, '@keyword.cpp', { fg = vc, bg = n }) -- "class"
  hl(0, '@keyword.directive.define.c', { fg = pcb, bg = n }) -- macro #define
  hl(0, '@keyword.modifier.cpp', { fg = vc, bg = n }) -- inline

  -- # ; : . :: [] {} ()
  hl(0, '@punctuation.special', { fg = b, bg = n })
  hl(0, '@punctuation.delimiter', { fg = b, bg = n })
  hl(0, '@punctuation.bracket', { fg =  b, bg = n })
  hl(0, '@operator', { fg = b , bg = n })
  hl(0, '@lsp.type.operator.cpp', { fg = n , bg = n, bold = false })
 -- if while else...
  hl(0, '@keyword.repeat', { fg = vc, bg = n })
  hl(0, '@keyword.conditional', { fg = vc, bg = n })
  hl(0, '@keyword.return', { fg = vc, bg = n })
  hl(0, '@keyword.exception', { fg = vc, bg = n })
  hl(0, '@keyword.import', { fg = pcb, bg = n }) --include
  hl(0, '@keyword.import.c', { fg = pcb, bg = n }) --include
  hl(0, '@keyword.operator.cpp', { fg =vc , bg = n }) 
  --funtions
  hl(0, '@lsp.type.function.c', { fg = fh, bg = n,bold=true})
  hl(0, '@lsp.type.function.cpp', { fg = fh, bg = n,bold=true})
  hl(0, '@function.call.c', { fg = fh, bg = n,bold=false})
  --macros
  hl(0, '@lsp.type.macro.c', { fg = pcb, bg = n })
  hl(0, '@lsp.type.macro.cpp', { fg = pcb, bg = n })
  --altres
  hl(0, '@keyword.directive.cpp', { fg =pcb , bg = n, bold =true }) 
  hl(0, '@keyword.directive.define.cpp', { fg =pcb , bg = n, bold =true }) 


end

return theme
