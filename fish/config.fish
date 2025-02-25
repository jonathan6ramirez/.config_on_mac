if status is-interactive
    # export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
    set -gx PATH /opt/homebrew/opt/node@18/bin $PATH

    # Commands to run in interactive sessions can go here
    set -gx PATH /opt/homebrew/opt/ruby $PATH

    status --is-interactive; and rbenv init - fish | source

    set -gx NVM_DIR ~/.nvm
    bass source (curl -sL https://get.nvm.sh | psub)

    # export NVM_DIR=~/.nvm

end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda3/bin/conda
    eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/anaconda3/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

