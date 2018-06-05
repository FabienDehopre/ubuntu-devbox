source /opt/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle dircycle
antigen bundle encode64
antigen bundle git
antigen bundle git-flow
antigen bundle history
antigen bundle node
antigen bundle npm
antigen bundle ng
antigen bundle sudo
antigen bundle yarn
antigen bundle z

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

# Tell Antigen that you're done.
antigen apply
export PATH=$HOME/.npm-global/bin:$PATH
alias ll="ls -la"
alias cls=clear
#alias crb="conventional-recommended-bump -p angular -t v -v"
