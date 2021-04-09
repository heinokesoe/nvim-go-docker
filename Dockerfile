FROM kalilinux/kali-rolling
RUN apt update \
&& apt upgrade -y \
&& apt install -y apt-utils \
&& apt install -y curl man wget nodejs neovim gcc git
RUN wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz \
&& tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz \
&& rm go1.16.3.linux-amd64.tar.gz
RUN curl https://raw.githubusercontent.com/heinokesoe/nvim-go-docker/main/bashrc >> ~/.bashrc \
&& curl https://raw.githubusercontent.com/heinokesoe/nvim-go-docker/main/goenv >> /etc/profile \
&& curl https://raw.githubusercontent.com/heinokesoe/nvim-go-docker/main/goenv >> ~/.bashrc \
&& curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
&& curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/heinokesoe/nvim-go-docker/main/init.vim \
&& curl -fLo ~/.config/nvim/coc-settings.json --create-dirs https://raw.githubusercontent.com/heinokesoe/nvim-go-docker/main/coc-settings.json \
&& mkdir -p ~/.config/nvim/plugged \
&& cd ~/.config/nvim/plugged \
&& git clone https://github.com/fatih/vim-go \
&& git clone https://github.com/neoclide/coc.nvim \
&& git clone https://github.com/preservim/nerdtree \
&& git clone https://github.com/ctrlpvim/ctrlp.vim \
&& git clone https://github.com/jiangmiao/auto-pairs \
&& git clone https://github.com/luochen1990/rainbow \
&& git clone https://github.com/morhetz/gruvbox
WORKDIR /root/go
