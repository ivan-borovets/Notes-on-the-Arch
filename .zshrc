# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

bindkey "^[[3~" delete-char
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jj/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jj/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jj/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/jj/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/jj/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/jj/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/jj/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias backup="(
	cp -u /home/jj/Passwords/Database-PC.kdbx '/run/media/jj/ADATA HD650/Пароли/Database-HDD.kdbx'
	cp -u /home/jj/Passwords/Database-PC.kdbx '/home/jj/Dropbox (Maestral)/Passwords/Database-Dropbox.kdbx'
	echo 'Passwords backups are made'
)"
alias jup="(
	conda activate myenv
	jupyter lab
)"
alias ledkey="sudo /home/jj/.nix-profile/bin/g512-led -fx color keys 4838F3"
alias ls="eza --icons --git --header --group-directories-first -l"
alias zconf="micro ~/.zshrc"
alias rstudio="(rstudio &) && exit"
alias okular="flatpak run org.kde.okular"

# LaTeX
export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH

# Nix
export PATH="~/.nix-profile/bin:$PATH"

# Created by `pipx` on 2023-09-14 23:01:18
export PATH="$PATH:/home/jj/.local/bin"

# RStudio
export PATH=/usr/lib/rstudio:$PATH


