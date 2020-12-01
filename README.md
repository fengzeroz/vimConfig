# Install
## install zsh && oh-my-zsh
`apt-get install zsh`  

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`  

`ln -sf ~/Program/vimConfig/zshrc .zshrc`
`ln -sf ~/Program/vimConfig/fengzero.sh .fengzero.sh`

`apt-get install autojump`  

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`  

`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`  

## install neovim
<https://github.com/neovim/neovim>  
`ln -s /usr/local/bin/nvim nvim.appimage`
pip install pynvim
pip3 install pynvim

## install vim-plug
<https://github.com/junegunn/vim-plug>


## create soft link
`ln -s vimConfig/init.vim ~/.config/nvim/init.vim`  
`ln -s vimConfig/coc-settings.json ~/.config/nvim/coc-settings.json`

## install coc-vim
<https://github.com/neoclide/coc.nvim>

### install nodejs
`curl -sL install-node.now.sh/lts | sudo bash`

### install coc extensions
coc-json coc-tsserver coc-html coc-css coc-vetur coc-yaml coc-python coc-highlight coc-snippets coc-git coc-vimlsp coc-xml coc-pairs

# autocomplete
## ccls install(c/c++)
<https://github.com/MaskRay/ccls/wiki>  
dependence: cmake g++ clang zlib-dev(zlib1g-dev)  

## gopls(golang)
<https://github.com/golang/tools/tree/master/gopls>  
`go get golang.org/x/tools/gopls@latest`  
`mv gopls /usr/local/bin`

## bash 
<https://github.com/mads-hartmann/bash-language-server>

## metals(scala)
<https://scalameta.org/metals/docs/editors/vim.html>

## python
pip3 install jedi

## efm-langserver(vim/erb/markdown)
<https://github.com/mattn/efm-langserver>

##haskell-ide-engine
<https://github.com/haskell/haskell-ide-engine#installation>
<https://mirrors.tuna.tsinghua.edu.cn/help/hackage/>
<http://docs.haskellstack.org/en/stable/install_and_upgrade/#ubuntu>
<https://mirror.tuna.tsinghua.edu.cn/help/stackage/>
install stack by generic

# format
<https://github.com/Chiel92/vim-autoformat>
## json  
npm install -g js-beautify  
## scala
<https://scalameta.org/scalafmt/docs/installation.html#vim>
## clang-format
<http://clang.llvm.org/docs/ClangFormat.html>  
`npm install -g clang-format`
