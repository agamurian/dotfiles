vim.cmd([[
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let w:airline_skip_empty_sections = 1
let g:airline_inactive_alt_sep=1
]])



vim.g.airline_theme = 'distinguished'
