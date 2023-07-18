vim.cmd("command! -nargs=? A :lua require('libs/arc').openLink(<f-args>)")
