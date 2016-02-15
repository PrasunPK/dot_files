#--------------------------------------------------------------------
# All colors for bash
#--------------------------------------------------------------------

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
 
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
 
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
 
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
 
txtrst='\e[0m'    # Text Reset

#--------------------------------------------------------------------
# My bash profile 
#--------------------------------------------------------------------

export PATH=~/bin:$PATH
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

[[ -f $HOME/.dircolors ]] && eval $(dircolors -b $HOME/.dircolors)
  if $_isxrunning; then

    [[ -f $HOME/.dircolors_256 ]] && eval $(dircolors -b $HOME/.dircolors_256)

    export TERM='xterm-256color'
     
    get_prompt_symbol() {
      [[ $UID == 0 ]] && echo "#" || echo "✮"
    }

    if [[ $PS1 && -f ~/.git-prompt.sh ]]; then
      source ~/.git-prompt.sh

      export GIT_PS1_SHOWDIRTYSTATE=1
      export GIT_PS1_SHOWSTASHSTATE=1
      export GIT_PS1_SHOWUNTRACKEDFILES=0

      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
      export PS1="$txtcyn[$txtpur$P\h$txtgrn\w\$(__git_ps1 \"$txtpur($txtred%s$txtpur)\")$txtcyn]$bldred\$(get_prompt_symbol)$txtwht "
    else
      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\w$GY]$W\$(get_prompt_symbol) "
      export PS1="$txtcyn[$txtpur\u$txtgrn\w$txtcyn]$bldred\$(get_prompt_symbol)$txtwht "
    fi
  else
    export TERM='xterm-color'
  fi

#--------------------------------------------------------------------
#  All my aliases !!
#--------------------------------------------------------------------


alias p='pwd'                             #Present working directory
alias gst='git status'                    #Git status 
alias log='git log --oneline'             #Viewing git log onelines
alias slog='git shortlog -s'              #Viewing git short log 
alias commit='git commit'                 #For git commits
alias add='git add .'                     #For git add purpose
alias push='git push'                     #Pushing to the remote git repo
alias pull='git pull'                     #Pulling from the remote git repo

export NVM_DIR="/Users/prasunkp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
