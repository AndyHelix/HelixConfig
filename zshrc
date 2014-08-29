# alias
source $HOME/.config/zsh/zsh_alias
#source $CONFZSH/zsh_alias

#ENV
#source $CONFZSH/zsh_user_env
source $HOME/.config/zsh/zsh_user_env


# Path to your oh-my-zsh configuration.
ZSH=/home/andy/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
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

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export JAVA_HOME=/disk/softpath/jdk1.7.0._51
export CLASSPATH=$CLASSPATH:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH:$HOMR/bin
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/andy/Bin
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export flask=$HOME/tmpworld/flask

export REAL=$HOME/tmpworld/realworldproj/

export NODE=$HOME/tmpworld/node/nodejs/0/miblog
export NODE_PATH=/usr/lib/node_modules/

export GOROOT=$HOME/Softfold/go
export GOPATH=$HOME/Softfold/go/bin

export PATH=$PATH:$GOROOT/bin

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.rvm/scripts/rvm

export TEXMACS_PATH=/home/andy/Softfold/TeXmacs
export PATH=$TEXMACS_PATH/bin:$PATH

export PATH=/opt/mongodb/bin:$PATH

export PATH=$PATH:/home/andy/Softfold/android-ndk-r10

export PATH=$PATH:/home/andy/Softfold/QScintilla-gpl-2.8.3/Python/sip

export ANDROID_SDK_ROOT=/home/andy/Softfold/adt-bundle-linux-x86_64-20140702/sdk
##########
# [ -n "$XTERM_VERSION" ] && transset-df 0.80 -a >/dev/null && xcompmgr &


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/andy/.gvm/bin/gvm-init.sh" ]] && source "/home/andy/.gvm/bin/gvm-init.sh"


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/home/andy/tmpworld/coco/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
#export NDK_ROOT=/home/andy/Softfold/android-ndk-r10
export NDK_ROOT=/home/andy/Softfold/android-ndk-r9d
export PATH=$NDK_ROOT:$PATH

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/home/andy/tmpworld/coco/cocos2dx/cocos2d-x-3.2/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/share/ant/bin
export PATH=$ANT_ROOT:$PATH

export PATH=$PATH:/usr/local/bin:$HOME/bin/Sencha/Cmd/5.0.0.160

export PATH=$PATH:/home/andy/tmpworld/js_all/cocos2djs/cocos2d-js-v3.0-rc1/tools/cocos2d-console/bin
export PATH=$PATH:/home/andy/.shoes/federales

export ERL_TOP=/home/andy/tmpworld/erlang/otp_src_17.1
export ERL15=/home/andy/.kerl/builds/r15b01/release_R15B01/bin
export ERL17=/home/andy/tmpworld/erlang/otp_src_17.1/bin
export PATH=$ERL15:$PATH

export PATH="$PATH:/home/andy/tmpworld/erlang/elixir/elixir-0.15.1/bin"

