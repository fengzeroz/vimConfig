FROM --platform=linux/amd64 ubuntu:18.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && apt-get clean

RUN apt-get update \
    && apt-get install -y net-tools zsh curl git vim autojump

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/fengzeroz/vimConfig.git ~/Program/vimConfig

RUN ln -sf ~/Program/vimConfig/zshrc ~/.zshrc
RUN ln -sf ~/Program/vimConfig/fengzero.sh ~/.fengzero.sh

RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zlsun/solarized-man.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/solarized-man

