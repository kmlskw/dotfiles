# VSCode profiles
if [[ ! -e ~/.vscode_profiles ]]; then
    mkdir ~/.vscode_profiles
fi

alias codes="code --extensions-dir ~/.vscode_profiles/codes/exts --user-data-dir ~/.vscode_profiles/codes/data"
