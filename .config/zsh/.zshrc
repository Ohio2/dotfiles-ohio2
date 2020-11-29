#autoload -U colors && colors
#  ::::::::  :::    ::: ::::::::::: ::::::::   ::::::::  ::: ::::::::            ::::::::: ::::::::  :::    ::: :::::::::   ::::::::  
# :+:    :+: :+:    :+:     :+:    :+:    :+: :+:    :+: :+ :+:    :+:                :+: :+:    :+: :+:    :+: :+:    :+: :+:    :+: 
# +:+    +:+ +:+    +:+     +:+    +:+    +:+       +:+     +:+                      +:+  +:+        +:+    +:+ +:+    +:+ +:+        
# +#+    +:+ +#++:++#++     +#+    +#+    +:+     +#+       +#++:++#++              +#+   +#++:++#++ +#++:++#++ +#++:++#:  +#+        
# +#+    +#+ +#+    +#+     +#+    +#+    +#+   +#+                +#+             +#+           +#+ +#+    +#+ +#+    +#+ +#+        
# #+#    #+# #+#    #+#     #+#    #+#    #+#  #+#          #+#    #+#            #+#     #+#    #+# #+#    #+# #+#    #+# #+#    #+# 
#  ########  ###    ### ########### ########  ##########     ########            ######### ########  ###    ### ###    ###  ########  
nerdfetch-ohio2
export ZSH="/home/maksymilian/.oh-my-zsh"
PROMPT="%B[%F{157}%*%F{255}] %F{033}%n%F{255}@%F{051}%m:%F{003}%~ %F{069}%?%F{255}%# %b%"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

source $HOME/.oh-my-zsh/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias alacritty.='$EDITOR ~/.config/alacritty/alacritty.yml'
alias pacman-dev="namcap"
alias 'pacman -D'="downgrade"
alias jail="firejail"
alias fetch="neofetch"
alias cls="clear"
alias exjava="java -jar"
alias tree="exa --tree"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
source $ZDOTDIR/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source $ZDOTDIR/zsh/zsh-autosuggestions/zsh-autosuggetions.zsh 2>/dev/null
source $ZDOTDIR/zsh/cp/cp.plugin.zsh 2>/dev/null
plugins=(up gitstatus git)
if [ -e /home/maksymilian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/maksymilian/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
source $ZDOTDIR/zsh/gitstatus/gitstatus.prompt.zsh
