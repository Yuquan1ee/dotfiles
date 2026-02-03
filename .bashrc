#
# ~/.bashrc
#

#fastfetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Your existing aliases
alias vim=nvim
alias nv=nvim

# Additional useful aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Enable color prompt
force_color_prompt=yes

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
else
    color_prompt=
fi

# Colored PS1 (modifying your existing prompt style)
if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\][\u@\h\[\033[01;34m\] \w]\[\033[00m\]\$ '
else
    PS1='[\u@\h \w]\$ '
fi
unset color_prompt force_color_prompt



export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim


export CRYPTOGRAPHY_OPENSSL_NO_LEGACY='1'
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
export PATH=~/.npm-global/bin:$PATH

# Dotfiles management
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
