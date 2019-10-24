# vimConfig

git clone https://github.com/fengzero25/vimConfig.git

# Install
## install neovim
https://github.com/neovim/neovim
ln -s /usr/local/bin/nvim nvim.appimage




2.install vim-plug
https://github.com/junegunn/vim-plug
:PlugInstall

3.config
ln -s vimConfig/init.vim ~/.config/nvim/init.vim
ln -s vimConfig/coc-settings.json ~/.config/nvim/coc-settings.json

4.coc-vim
https://github.com/neoclide/coc.vim

install nodejs
curl -sL install-node.now.sh/lts | sudo bash

5.install coc extensions
coc-json coc-tsserver coc-html coc-css coc-vetur coc-yaml coc-python coc-highlight coc-snippets coc-git coc-vimlsp coc-xml coc-pairs

autocomplete
6.ccls install(c/c++)
https://github.com/MaskRay/ccls/wiki
dependence: cmake g++ clang zlib-dev(zlib1g-dev)
format: clang-format


7.gopls(golang)
https://github.com/golang/tools/tree/master/gopls
go get golang.org/x/tools/gopls@latest
mv gopls /usr/local/bin

8.bash 
https://github.com/mads-hartmann/bash-language-server

9.metals(scala)
https://scalameta.org/metals/docs/editors/vim.html

10.efm-langserver(vim/erb/markdown)
https://github.com/mattn/efm-langserver
