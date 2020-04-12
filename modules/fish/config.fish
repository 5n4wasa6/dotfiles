# load local.fish
source ~/.config/fish/local.fish
source ~/.config/fish/functions.fish

# initialize
function fish_prompt
    if [ $status -eq 0 ]
        set status_face (set_color green)">"(set_color yellow)">"(set_color red)"> "
    else
        set status_face (set_color red)">>> "
    end
    printf '%s %s' (set_color yellow)(prompt_pwd) $status_face
end

# alias
alias cdd 'cd ~/Desktop'
alias g 'cd (ghq root)/(ghq list | peco)'
alias gh 'hub browse (ghq list | peco | cut -d "/" -f 2,3)'


# AWS CLI
set PATH ~/.local/bin $PATH
