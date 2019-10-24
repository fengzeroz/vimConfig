# vimConfig

1.install neovim
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

6.ccls install
https://github.com/MaskRay/ccls/wiki

