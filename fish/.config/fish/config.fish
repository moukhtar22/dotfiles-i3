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
    ga="git add"
    gs="git status"
    gc="git commit -m"
    gp="git push"
end

# Add spicetify to PATH
fish_add_path /home/dastarruer/.spicetify
export PATH="$PATH:$HOME/.spicetify"

# Start starship
starship init fish | source

# Set key repeat rate
xset r rate 175 40
