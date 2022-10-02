" Auto close if NerdTree is the only open window
" --- Broken ---
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

