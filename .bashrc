# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='[\T]-\u:\W \\$'
# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
	local SEARCH=' '
	local REPLACE='%20'
	local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
	printf '\e]7;%s\a' "$PWD_URL"
    }
    PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi

# Xero's Export
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Xero's Alias								    
alias cdcod='cd ~/Code'
alias ll='ls -alGF'
alias virc='vim ~/.bashrc'
alias cddow='cd ~/Downloads'
alias cdmus='cd ~/Music'
alias srcbsh='source ~/.bashrc'
alias ptt='ssh bbsu@ptt.cc'

# Xero's source
source ~/.git-completion.bash
source /usr/local/bin/virtualenvwrapper.sh

# Perl Brew
source ~/perl5/perlbrew/etc/bashrc
