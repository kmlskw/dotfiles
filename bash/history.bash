# Limits the number of commands shown by the command history
export HISTSIZE=-1
# Limits the number of commands which can be saved in $HISTFILE
export HISTFILESIZE=-1

# If set, the history list is appended to the file named by the value of the HISTFILE variable when the shell exits, rather than overwriting the file.
shopt -s histappend
# If set, and Readline is being used, a user is given the opportunity to re-edit a failed history substitution.
shopt -s histreedit
# If set, and Readline is being used, the results of history substitution are not immediately passed to the shell parser. Instead, the resulting line is loaded into the Readline editing buffer, allowing further modification.
shopt -s histverify

# A colon-separated list of values controlling how commands are saved on the history list. If the list of values includes ignorespace, lines which begin with a space character are not saved in the history list. A value of ignoredups causes lines matching the previous history entry to not be saved. A value of ignoreboth is shorthand for ignorespace and ignoredups. A value of erasedups causes all previous lines matching the current line to be removed from the history list before that line is saved. Any value not in the above list is ignored. If HISTCONTROL is unset, or does not include a valid value, all lines read by the shell parser are saved on the history list, subject to the value of HISTIGNORE. The second and subsequent lines of a multi-line compound command are not tested, and are added to the history regardless of the value of HISTCONTROL. 
HISTCONTROL=ignoreboth

# PROMPT_COMMAND 
# If set, the value is executed as a command prior to issuing each primary prompt.
# -a	append history lines from this session to the history file
# -c	clear the history list by deleting all of the entries
# -r	read the history file and append the contents to the history list
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
