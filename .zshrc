# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
DEFAULT_USER='fjzhou'


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
setopt no_nomatch

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

#PROMPT='%{$fg[red]%}➜ %{$fg[green]%}%p%{$fg[cyan]%}%d %{$fg[blue]%}$(git_prompt_info)%{$fg[blue]%}% %{$reset_color%}>'

alias javac="javac -J-Duser.country=US"

OPENRESTY_HOME=/usr/local/openresty
MYSQL_HOME=/usr/local/mysql
PHP_HOME=/usr/local/php
PYTHON3_HOME=/usr/local/python3
ZSH_HOME=/usr/local/zsh
MVN_HOME=/usr/local/maven
TOMCAT_HOME=/usr/local/apache-tomcat
TFS_HOME=/usr/local/TeamFoundationEverywhere
GO_HOME=/usr/local/go
GRADLE_HOME=/usr/local/gradle
POSTGRESQL_HOME=/usr/local/pgsql
DOTNET_HOME=/usr/local/share/dotnet
JAVA_HOME=`/usr/libexec/java_home`
export PATH=$ZSH_HOME/bin:$POSTGRESQL_HOME/bin:$GRADLE_HOME/bin:$GO_HOME/bin:$TOMCAT_HOME/bin:$MVN_HOME/bin:$OPENRESTY_HOME/luajit/bin:$OPENRESTY_HOME/nginx/sbin:$MYSQL_HOME/bin:$PHP_HOME/bin:$PYTHON3_HOME/bin:$TFS_HOME:/usr/local/bin:$DOTNET_HOME:$PATH
export LANG=en_US.UTF-8
export PYTHONPATH=~/webpy
export NODE_PATH=/usr/local/lib/node_modules
export MVN_HOME
export TOMCAT_HOME
export ANDROID_HOME=$HOME/android-sdk-macosx
export GRADLE_HOME
export EDITOR=vim
export PGDATA=$POSTGRESQL_HOME/data
export OPENSSL_CONF=/var/MyCA/openssl.cnf
export JAVA_HOME

#alias for cnpm
#alias npm="npm --registry=https://registry.npm.taobao.org \
#  --cache=$HOME/.npm/.cache/cnpm \
#  --disturl=https://npm.taobao.org/dist \
#  --userconfig=$HOME/.cnpmrc"

[ -s "/Users/fjzhou/.dnx/dnvm/dnvm.sh" ] && . "/Users/fjzhou/.dnx/dnvm/dnvm.sh" # Load dnvm

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
