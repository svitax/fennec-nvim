(module core
  {autoload {nvim aniseed.nvim
             a aniseed.core}})

(global fennec {:modules []
                :colorscheme "fennec-gruvbox"
                :mouse true
                :relative-num true

                :python {:linter ""
                         :formatter "" ; yapf or black
                         :autoformat false
                         :isort false
                         :diagnostics {:virtual_text {:spacing 0
                                                      :prefix ""}
                                       :signs true
                                       :underline true}
                         :analysis {:type_checking "basic"
                                    :auto_search_paths true
                                    :use_library_code_types true}}
                :dart {:sdk_path "/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot"}
                :lua {:formatter "" ;lua-format
                      :autoformat false
                      :diagnostics {:virtual_text {:spacing 0
                                                   :prefix ""}
                                    :signs true
                                    :underline true}}
                :sh {:linter ""
                     :formatter ""
                     :autoformat false
                     :diagnostics {:virtual_text {:spacing 0
                                                  :prefix ""}
                                   :signs true
                                   :underline true}}
                :tsserver {:linter "" ; eslint
                           :formatter "" ;prettier
                           :autoformat false
                           :diagnostics {:virtual_text {:spacing 0
                                                        :prefix ""}
                                         :signs true
                                         :underline true}}
                :json {:formatter "" ; prettier
                       :autoformat ""
                       :diagnostics {:virtual_text {:spacing 0
                                                    :prefix ""}
                                     :signs true
                                     :underline true}}
                :tailwindls {:filetypes [:html :css :scss :javascript :javascriptreact :typescript :typescriptreact]}
                :clang {:diagnostics {:virtual_text {:spacing 0
                                                     :prefix ""}
                                      :signs true
                                      :underline true}}
                :ruby {:diagnostics {:virtual_text {:spacing 0
                                                     :prefix ""}
                                      :signs true
                                      :underline true}
                       :filetype [:rb :erb :rakefile]}
                :go {}
                :css {}
                :html {} 
                :dashboard {:custom_header ["⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⠤⠴⠂⠒⠐⠤⠄⡀⡠⠤⠤⠤⠔⠂⣂⡽⠋⠁⣰⡁⠀⠀⢀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠘⠁⠁⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⣀⡤⠚⠃⠁⠀⢸⡄⠀⠀⠀⠈⠉⠁⠀⠐⠚⠉⠕⢲⣄⠀⠀⠀⠀⠀"
                                            "⢠⠤⠤⠤⠤⠤⠤⠤⠤⠤⠴⠶⠤⠞⠂⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠐⠞⠁⠀⠀⠀⠀⢰⠞⠀⣀⡤⠤⢤⣤⣀⡀⠀⠀⠀⠀⠀⠈⠳⣄⠀⠀⠀"
                                            "⠀⠉⠑⠶⡒⠤⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⡄⢄⡴⠚⢁⠖⠋⠁⠀⠀⠀⠀⠀⠉⠂⠀⠀⠀⠀⠀⠀⠘⣷⡄⠀"
                                            "⠀⠀⠀⠀⠈⠢⣄⠀⠉⠉⠒⠒⠲⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠀⠀⠠⣖⠓⠊⢁⠀⡰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⡸⣿⡀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠑⠢⠄⠀⡀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣜⠁⠀⠀⢠⠮⠂⠀⠀⠀⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡏⡇"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠀⠠⠀⢨⠂⠀⠀⠐⠀⠐⢢⠀⠀⠀⢁⠀⢀⡔⢉⠟⠀⠀⠀⣴⠿⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⡇"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣤⣒⣀⠀⠒⠀⡀⠀⢨⠀⢀⣤⡄⠉⣬⢹⠃⠀⠀⡰⠋⠀⠀⠀⠀⣠⠆⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡾⠁"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠜⢿⣟⣿⣥⡇⢀⠀⠀⠀⠁⡚⣻⡶⡿⢮⣞⣂⣠⣼⣀⡀⢀⣀⣴⣊⡏⠀⠀⠠⣀⣀⢀⡀⣀⣀⣀⣠⠔⠀⠀⠀⢼⠟⠁⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠘⠛⠉⠉⠁⢉⣱⠴⠒⠊⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠈⠉⠁⠀⠀⠚⠛⠻⠛⠛⠋⠉⠀⠀⢀⡴⠓⠁⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠜⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⠴⠚⠁⠀⠀⠀⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣠⠶⠓⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠋⠀⠀⢀⣀⣄⠤⠶⠒⠛⠛⠁⠙⠙⠛⠉⠉⠋⠉⠩⠽⠛⠛⠟⠛⠛⠻⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⣠⠊⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"]
                            :footer "fennec-nvim"}})

(global fennec! (fn [...]
  (let [settings [...]]
    (for [i 1 (a.count settings) 2]
      (let [key (. settings i)
            val (. settings (+ i 1))]
        (tset fennec key val))))))

(global CONFIG_PATH (vim.fn.stdpath "config"))
; CONFIG_PATH = vim.fn.stdpath('config')
(global DATA_PATH (vim.fn.stdpath "data"))
; DATA_PATH = vim.fn.stdpath('data')
(global CACHE_PATH (vim.fn.stdpath "cache"))
; CACHE_PATH = vim.fn.stdpath('cache')


;; Generic Neovim configuration.
(set nvim.o.termguicolors true)
(set nvim.o.mouse "a")
(set nvim.o.updatetime 500)
(set nvim.o.timeoutlen 500)
(set nvim.o.sessionoptions "blank,curdir,folds,help,tabpages,winsize")
(set nvim.o.inccommand :split)
(vim.cmd "set iskeyword+=-") ; treat dash separated words as a word text object
(vim.cmd "set shortmess+=c") ; Don't pass messages to |ins-completion-menu|.
(vim.cmd "set inccommand=split") ; Make substitution work in realtime
(set vim.o.hidden true) ; Required to keep multiple buffers open multiple buffers
(set vim.o.title true)
(set vim.o.titlestring "%<%F%=%l/%L - nvim")
(set nvim.wo.wrap false) ; Display long lines as just one line
(vim.cmd "set whichwrap+=<,>,[,],h,l") ; move to next line with theses keys
(nvim.ex.syntax :on) ; syntax highlighting
(set vim.o.pumheight 10) ; Makes popup menu smaller
(set vim.o.fileencoding "utf-8") ; The encoding written to file
(set vim.o.cmdheight 2) ; More space for displaying messages
(vim.cmd "set colorcolumn=99999") ; fix indentline for now
(set vim.o.mouse "a") ; Enable your mouse
(set vim.o.splitbelow true) ; Horizontal splits will automatically be below
(set vim.o.termguicolors true) ; set term gui colors most terminals support this
(set vim.o.splitright true) ; Vertical splits will automatically be to the right
(set vim.o.conceallevel 0) ; So that I can see `` in markdown files
(vim.cmd "set ts=4") ; Insert 2 spaces for a tab
(vim.cmd "set sw=4") ; Change the number of space characters inserted for indentation
(vim.cmd "set expandtab") ; Converts tabs to spaces
(set vim.bo.smartindent true) ; Makes indenting smart
(set vim.wo.cursorline true) ; Enable highlighting of the current line
(set vim.o.showtabline 2) ; Always show tabs
(set vim.o.showmode false) ; We don't need to see things like -- INSERT -- anymore
(set vim.o.backup false) ; This is recommended by coc
(set vim.o.writebackup false) ; This is recommended by coc
(set vim.wo.signcolumn "yes") ; Always show the signcolumn, otherwise it would shift the text each time
(set vim.o.updatetime 300) ; Faster completion
(set vim.o.timeoutlen 100) ; By default timeoutlen is 1000 ms
(set vim.o.clipboard "unnamedplus") ; Copy paste between vim and everything else
(set vim.g.nvim_tree_disable_netrw 0) ; enable netrw for remote gx gf support (must be set before plugin's packadd)
(vim.cmd "filetype plugin on") ;filetype detection
(set nvim.o.guifont "JetBrainsMono Nerd Font:h15")
; (nvim.ex.colorscheme (. fennec :colorscheme))
(nvim.ex.set :number) ; set numbered lines
(nvim.ex.set :relativenumber) ; set relative number
;(set vim.wo.relativenumber (. fennec :relative_number)) ; set relative number
(nvim.ex.set :spell)
(nvim.ex.set :list)


