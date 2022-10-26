vim.cmd [[
try
  let ayucolor="mirage"
  colorscheme darcula 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

