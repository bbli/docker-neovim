FROM updated-artful
MAINTAINER Benson Li "bensonbinbinli@gmail.com"
RUN apt update \
&& apt --assume-yes install neovim \
&& apt --assume-yes install python-neovim \
&& apt --assume-yes install git \
&& apt --assume-yes install ctags \
&& apt --assume-yes install silversearcher-ag \
&& apt --assume-yes clean \
&& mkdir /root/.config \
&& mkdir /root/.config/nvim \
&& mkdir /root/.vim \
&& mkdir /root/.fzf \
&& mkdir /root/dotfiles \
&& ln -s /root/dotfiles/.vimrc /root/.vimrc \
&& ln -s /root/dotfiles/.inputrc /root/.inputrc \
# ubuntu image already has a bashrc that sources the .bash_aliases file
# && ln -s /root/dotfiles/.bashrc /root/.bashrc \
&& ln -s /root/dotfiles/.bash_aliases /root/.bash_aliases \
&& ln -s /root/dotfiles/.gitconfig /root/.gitconfig \
&& ln -s /root/dotfiles/.shell_prompt.sh /root/.shell_prompt.sh \
&& ln -s /root/dotfiles/init.vim /root/.config/nvim/init.vim

COPY /.vim /root/.vim
COPY /dotfiles /root/dotfiles
COPY /.fzf /root/.fzf

