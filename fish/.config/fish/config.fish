if status --is-interactive
    #Aliases
    # APT
    alias apt="sudo apt"

    # Timeshift
    alias timeshift="sudo timeshift"

    # Pipes 
    alias pipes="pipes -p 10"

    # Cmatrix 
    alias cmatrix="cmatrix -u 3 -C magenta"

    # Cd
    alias ..="cd .."
    
    # Git
    alias ga="git add"
    alias g.="git add ."
    alias gs="git status"
    alias gc="git commit -m"
    alias gp="git push"
    alias gl="git log"
end

# Add spicetify to PATH
fish_add_path /home/dastarruer/.spicetify
export PATH="$PATH:$HOME/.spicetify"

# Start starship
starship init fish | source

# Set key repeat rate
xset r rate 175 40
