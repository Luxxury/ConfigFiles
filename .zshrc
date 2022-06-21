# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:usr/local/sbin:usr/sbin:/usr/bin:$HOME/Documents/Scripts/:$HOME/.local/bin:$PATH/
export ZSH="$HOME/.oh-my-zsh"
export XKB_DEFAULT_OPTIONS=caps:escape
ZSH_THEME="gentoo"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"


# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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

#Plugins
plugins=(git vi-mode zsh-autosuggestions copypath copyfile copybuffer)

source $ZSH/oh-my-zsh.sh
source /home/plague/.oh-my-zsh/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

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

export EDITOR=/usr/bin/vim


# Aliases

# Verbosity and settings that you pretty much just always are going to want.
alias cp="cp -iv" 
alias mv="mv -iv" 
alias rm="rm -vI" 
alias rf="rm -vIrf" 
alias la="ls -la" 
alias bc="bc -ql" 
alias mkdir="mkdir -pv" 
alias du="du -h" 
alias df="df -h" 
alias ytb="yt-dlp -x -f bestaudio/best" 
alias yt="ytfzf -t --thumb-viewer=kitty" 
alias ffmpeg="ffmpeg -hide_banner" 

# Colorize commands when possible.
alias ls="ls -hN --color=auto --group-directories-first" 
alias grep="grep --color=auto" 
alias diff="diff --color=auto" 


# Package manager aliases
alias ki="sudo dnf install -y " 
alias ku="sudo dnf upgrade -y" 
alias ks="dnf search " 
alias kq="dnf info" 
alias kr="sudo dnf remove -y"  
alias fpi="flatpak install " 
alias fps="flatpak search " 
alias fpq="flatpak info" 
alias fpr="flatpak uninstall " 


# These common commands are just too long! Abbreviate them.
alias sdn="poweroff" 
alias src="source ~/.zshrc" 
alias v="$EDITOR" 
alias ani="ani-cli" 
alias nfh="neofetch" 
alias rg="ranger" 
alias cpdf="libreoffice --headless --convert-to pdf" 
alias vid="flatpak run io.github.celluloid_player.Celluloid" 
alias n="nautilus . --new-window"

# Easily edit certain files with these commands
alias cfz="$EDITOR ~/.zshrc"
alias cfs="$EDITOR ~/.config/sway/config"
alias cfw="$EDITOR ~/.config/waybar/config"


 # Easily go places with this commands
alias d="cd ~/Documents" 
alias D="cd  ~/Downloads"  
alias ss="ranger ~/Pictures/Screenshots" 
alias sr="ranger ~/Videos/Screencasts" 
alias cf="cd .config" 
alias w="ranger ~/Pictures/Wallpapers" 
alias ww="cd ~/Pictures/Wallpapers" 
alias sc="cd ~/Documents/Scripts"


# Shell functions

 #auto ls on cd 
 cd(){
	 builtin cd $@
	 ls
 }
