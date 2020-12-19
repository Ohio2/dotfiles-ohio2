#autoload -U colors && colors
#  ::::::::  :::    ::: ::::::::::: ::::::::   ::::::::  ::: ::::::::            ::::::::: ::::::::  :::    ::: :::::::::   ::::::::  
# :+:    :+: :+:    :+:     :+:    :+:    :+: :+:    :+: :+ :+:    :+:                :+: :+:    :+: :+:    :+: :+:    :+: :+:    :+: 
# +:+    +:+ +:+    +:+     +:+    +:+    +:+       +:+     +:+                      +:+  +:+        +:+    +:+ +:+    +:+ +:+        
# +#+    +:+ +#++:++#++     +#+    +#+    +:+     +#+       +#++:++#++              +#+   +#++:++#++ +#++:++#++ +#++:++#:  +#+        
# +#+    +#+ +#+    +#+     +#+    +#+    +#+   +#+                +#+             +#+           +#+ +#+    +#+ +#+    +#+ +#+        
# #+#    #+# #+#    #+#     #+#    #+#    #+#  #+#          #+#    #+#            #+#     #+#    #+# #+#    #+# #+#    #+# #+#    #+# 
#  ########  ###    ### ########### ########  ##########     ########            ######### ########  ###    ### ###    ###  ########  
colorscript -e 30
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
DISABL_MAGIC_FUNCTIONS="false"
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


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $ZDOTDIR/zsh/antigen.zsh
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
alias pacman-dev="namcap"
alias jail="firejail"
alias fetch="neofetch"
alias cls="clear"
alias tree="exa --tree"
alias ls="exa"
alias ll="exa -l"
alias la="exa -la"
alias -g hdd1="/media/hdd1"
alias -g ..='..'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g dev="devices"
alias gc="git clone"
alias gp="git commit && git push"
alias gs="git stash"
source $ZDOTDIR/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source $ZDOTDIR/zsh/zsh-autosuggestions/zsh-autosuggetions.zsh 2>/dev/null
source $ZDOTDIR/zsh/cp/cp.plugin.zsh 2>/dev/null
#plugins=(up gitstatus git)
if [ -e /home/maksymilian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/maksymilian/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
source $ZDOTDIR/zsh/gitstatus/gitstatus.prompt.zsh
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi
ex()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar) tar -xf $1 ;;
			*.tar.bz2) tar -xjf $1 ;;
			*.tar.xz) tar -xJf $1 ;;
			*.tar.lz) tar -x --lzip -f $1 ;;
			*.bz2) bunzip2 $1 ;;
			*.rar) unrar x $1 ;;
			*.tbz2) tar -xjf $1 ;;
			*.tgz) tar -xzf $1 ;;
			*.Z) uncompress $1 ;;
			*.7z) 7z x $1 ;;
			*.xz) xz -d $1 ;;
			*.gz) gzip -d $1 ;;		                  
			*.lz) lzma -d $1 ;;
			*.zip) unzip $1 ;;
			*) echo 'Not a valid file.'
		esac
	else
		echo "Could not extract"
	fi
}
