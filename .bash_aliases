# MC
alias mc='. /usr/libexec/mc/mc-wrapper.sh'

# DirDiff with (n)Vim
dirdiff () {
    if [ "${#}" -ne 2 ] ; then
        echo "vdiff requires two arguments"
        echo "  comparing dirs:  vdiff dir_a dir_b"
        echo "  comparing files: vdiff file_a file_b"
        return 1
    fi

    local left="${1}"
    local right="${2}"

    if [ -d "${left}" ] && [ -d "${right}" ]; then
        nvim +"DirDiff ${left} ${right}"
    else
        nvim -d "${left}" "${right}"
    fi
}

# Diff 
alias diff="diff --color -u"

# VSCode profiles
if [[ ! -e ~/.vscode_profiles ]]; then
    mkdir ~/.vscode_profiles
fi
alias codemik="code --extensions-dir ~/.vscode_profiles/mik/exts --user-data-dir ~/.vscode_profiles/mik/data"
