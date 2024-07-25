local colors = require('nvim-juliana').colors()

--colors = {
--bg1          = '#444e59',
--bg2          = '#303841',
--bg3          = '#2e353e',
--blue1        = '#95b2d6',
--blue2        = '#5c99d6',
--cyan1        = '#87c7c7',
--cyan2        = '#5fb4b4',
--diff_add     = '#41525a',
--diff_change  = '#585249',
--diff_remove  = '#4f434a',
--diff_text    = '#373f48',
--fg1          = '#ffffff',
--fg2          = '#d8dee9',
--fg3          = '#a6acb9',
--fg4          = '#46525c',
--green        = '#99c794',
--magenta      = '#c695c6',
--orange       = '#f97b58',
--red1         = '#c76b70',
--red2         = '#ec5f66',
--selection_bg = '#3f4750',
--text_fg      = '#d9d9d9',
--yellow1      = '#fac761',
--yellow2      = '#f9ae58',
--yellow3      = '#ee932b',

colors.diff_add = '#103210'
colors.diff_change = '#383239'
colors.diff_remove = '#3f1010'
colors.diff_text = '#171f18'

colors.fg1 = '#eacaa3'
colors.fg2 = '#bbbbbb'
colors.fg3 = '#7a7472'
colors.fg4 = '#244c30'

colors.selection_bg = '#303531'

colors.bg1 = '#2d2d2d'
colors.bg2 = '#111111'
colors.bg3 = '#151414'

colors.cyan2 = '#5fbaa0'
colors.red2 = '#da7a77'
colors.red1 = '#823737'
colors.cyan1 = '#177777'
colors.yellow1 = '#c3c333'
colors.magenta  = '#cfa0c3'
colors.green  = '#9fb087'

--parameter
colors.blue1        = '#94a6c0'
--function call
colors.blue2        = '#85d5b8'
--colors.blue2        = '#daa996'

local config = function()
  require 'nvim-juliana'.setup { colors }
end

config()
