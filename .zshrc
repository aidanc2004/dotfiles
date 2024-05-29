alias ls='ls -G'

# Custom prompt
PS1='%1~ λ '

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Custom scripts
export PATH="/Users/aidancarey/.scripts/wheelock-perl:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change
export PATH="$PATH:$HOME/.rvm/bin"

## CUSTOM ALIASES ##

# yt-dlp
alias ytmp3="yt-dlp -x --audio-format mp3"
alias ytogg="yt-dlp -x --audio-format ogg"
alias ytsd="yt-dlp -f 18"
alias ythd="yt-dlp -f 22"

alias py="python3" # python3
alias rb="ruby" # ruby
