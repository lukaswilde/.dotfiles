# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Oh-my-zsh plugins
plugins=(
	git
	vi-mode
	you-should-use
	zsh-syntax-highlighting
	# zsh-completions
	zsh-autosuggestions
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# ---------------------------------------------------------------------
# My additions to oh-my-zsh
# ---------------------------------------------------------------------

# Setup completions directory
fpath=($HOME/.config/completions $fpath)

# Enable completion system
autoload -U compinit

# Initialize all completions
compinit -i

# Use NVim instead of vim
alias vim=nvim

#update tex tree
alias textree='sudo texhash && sudo mktexlsr'

# Apply pandoc with small margins
alias pandoc="pandoc -V geometry:'top=1cm, right=1cm, left=1cm, bottom=2cm'"

# Setting PATH for Python 3.11
PATH="/opt/homebrew/bin/python3.11:${PATH}"
#PATH="/Users/lukas/Library/Python/3.11/bin:${PATH}"
export PATH

alias python=python3
alias pip=pip3

# --- Setting aliases to navigate to icloud folders

icloud="$HOME/Library/Mobile\ Documents/com\~apple\~CloudDocs"
studium="$icloud/_Personal/Studium"
personal="$icloud/_Personal"

alias icloud="cd $icloud"

alias personal="cd $icloud/_Personal"

alias dev="cd $HOME/dev"
alias aoc="cd $HOME/dev/aoc"
alias drk="cd $icloud/_Personal/DRK"
alias dl="cd $HOME/Downloads"
alias docs="cd $icloud/_Personal/Rechnungen\ \&\ Dokumente"

# --- Setting aliases to quickly navigate to 'Studium' icloud folders

# WS 19/20
alias dsai="cd $studium/WS19\:20/DSAI"
alias mfi="cd $studium/WS19\:20/MfI3"
alias ti="cd $studium/WS19\:20/TI"
alias algodat="cd $studium/WS19\:20/AlgoDat"

# SS 20
#alias bde="cd $studium/SS20/BDE"
alias ai="cd $studium/SS20/AI"
alias ep3b="cd $studium/SS20/EP3b"
alias statlab="cd $studium/SS20/StatLab"

# WS 20/21
alias dbsys="cd $studium/WS20\:21/DB\ Systems"
alias eml="cd $studium/WS20\:21/EML"
alias ep3a="cd $studium/WS20\:21/EP\ IIIa"
alias pml="cd $studium/WS20\:21/PML"
alias qip="cd $studium/WS20\:21/QIP"

# SS 21
alias bde="cd $studium/SS21/BDE"
alias dbsem="cd $studium/SS21/Database\ Seminar"
alias dn="cd $studium/SS21/DN"
alias hlcv="cd $studium/SS21/HLCV"
alias mlps="cd $studium/SS21/Projektseminar"
alias snlp="cd $studium/SS21/SNLP"

# WS 21/22 
alias statr="cd $studium/WS21\:22/StatR"
alias bscsem="cd $studium/WS21\:22/Bachelorseminar"
alias aiplanning="cd $studium/WS21\:22/AI\ Planning"
alias nn="cd $studium/WS21\:22/Neural\ Networks"
alias edsai="cd $studium/WS21\:22/EDSAI"

# SS 22 
alias ml="cd $studium/SS22/ML"
alias ipcv1="cd $studium/SS22/IPCV"
alias bsc="cd ~/bachelor"

# WS 22/23
alias hod="cd $studium/WS2223/HOD"
alias nnti="cd $studium/WS2223/NNTI"
alias ar="cd $studium/WS2223/AR"
alias aip="cd $studium/WS2223/AIP"
alias qai="cd $studium/WS2223/QAI"

# SS 23
alias ipcv="cd $studium/SS23/IPCV"
alias ml="cd $studium/SS23/ML"
alias amlm="cd $studium/SS23/AMLM"
alias qopt="cd $studium/SS23/QOPT"
alias ic="cd $studium/SS23/IC"
alias hiwi="cd $studium/SS23/HIWI"
alias worktime="cd $personal/Arbeit:Steuer/HIWI_Hoffmann"

# WS 23/24
alias ai="cd $studium/WS2324/AI"
alias rl="cd $studium/WS2324/RL"

# SS 24
alias master="cd $studium/SS24/Masterthesis"


# Bind C-K to clearing the terminal
bindkey -s '^K' '^Mclear^M' 

# Use eza instead of ls
function ls() 
{
  if [[ "$1" == -* ]]; then
    eza --colour-scale -bghla -snew $2
  else
    eza --colour-scale -bghla -snew $1
  fi
}

alias l="eza -bghl -snew"
alias ll="eza -bghl -snew"

# Inlcude LLVM in the PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"

# Inlcude brew to path
export PATH="/opt/homebrew/bin:$PATH"

# Use starship prompt
eval "$(starship init zsh)"

# Add texlive directory to TEXINPUTS
# export TEXINPUTS=/usr/local/texlive//:$TEXINPUTS
export TEXINPUTS=/usr/local/texlive/2024/texmf-dist/tex//:$TEXINPUTS
