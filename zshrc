# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="wezm"
#ZSH_THEME="clean"
#ZSH_THEME="cloud"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="pygmalion"
ZSH_THEME="candy"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump git gnu-utils copyfile copydir colored-man python mysql-macports debian web-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...


##########
# Alias1 #
##########
alias ls='ls --color=auto -F'
alias ll='ls -l'
alias la='ls -A'
alias vi='vim'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias emacs='emacs -nw'
alias dstat='dstat -cdlmnpsy'
alias SimpleHTTPServer='python -m SimpleHTTPServer'
#alias ustc_bbs='luit -encoding gbk telnet bbs.ustc.edu.cn'
#alias ustc_vpn_d='sudo openvpn --config ~/.vpn/ustc_vpn/ustc-dianxin.ovpn'
#alias ustc_vpn_w='sudo openvpn --config ~/.vpn/ustc_vpn/ustc-wangtong.ovpn'

##########
# Alias2 #
##########
# hash -d dir_name="dir_path"
# cd ~dir_name
hash -d ACE="/usr/share/doc/libace-doc"
hash -d AUTOCONF="/usr/share/doc/autoconf-doc/"
hash -d BOOST="/usr/share/doc/libboost1.55-doc/HTML/"
hash -d CPPA="/usr/share/doc/c++-annotations/html/"
#hash -d CRYPTO="/usr/share/doc/libcrypto++-doc/html/"
hash -d DOC="/usr/share/doc"
hash -d DOXYGEN="/usr/share/doc/doxygen/html/"
hash -d GDB="/usr/share/doc/gdb-doc/html/"
#hash -d NCURSES="/usr/share/doc/ncurses-doc/html/"
hash -d ZSH="/usr/share/doc/zsh-doc/html/"
hash -d ICU="/usr/share/doc/libicu-dev/docs"
hash -d POSTGRESQL="/usr/share/doc/postgresql-doc-9.1/"
hash -d STL="/usr/share/doc/stl-manual/html"
hash -d APT="/usr/share/doc/aptitude/html/en/"
hash -d LOKI="/usr/share/doc/libloki-doc/html"
hash -d DEB=/var/cache/apt/archives
hash -d SRC=/usr/src
hash -d LINUX=/lib/modules/$(command uname -r)/build/
hash -d LOG=/var/log
hash -d SLOG=/var/log/syslog
hash -d WWW=/var/www


# JDK_ENV
export JAVA_HOME=/usr/lib/jvm/java-7-oracle  
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export ANT_HOME=/usr/local/apache-ant-1.9.3
export PATH=${JAVA_HOME}/bin:$PATH  
export PATH=${ANT_HOME}/bin:$PATH

# CUDA_ENV
#export PATH=/usr/local/cuda-5.5/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-5.5/lib64:/usr/lib/nvidia-current:$LD_LIBRARY_PATH

# OpenCV_ENV
#export OpenCV_DIR=/usr/local/opencv-2.4.6.1

# QT
#export QTDIR=/opt/Qt5.1.0/
#export PATH=$QTDIR/5.1.0/gcc/bin:$PATH
#export LD_LIBRARY_PATH=$QTDIR/5.1.0/gcc/lib:$LD_LIBRARY_PATH

# Android
#export ANDROID_SDK_HOME=~/bin/android-sdk-linux
#export PATH=${ANDROID_SDK_HOME}/platform-tools:$PATH

# Lua
export SCALA_HOME=/usr/local/share/scala
export PATH=$PATH:$SCALA_HOME/bin
# NVM
export NVM_DIR="/home/zhaoy/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
