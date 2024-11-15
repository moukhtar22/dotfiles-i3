if status --is-interactive
    # Add custom scripts folder to PATH
    set -U fish_user_paths $fish_user_paths /home/dastarruer/bin
    
    # Rebind Caps Lock
    setxkbmap -option ctrl:nocaps
    xcape -e 'Control_L=Escape'
   
    # Aliases
    # APT
    alias apt="sudo apt"

    # Timeshift
    alias timeshift="sudo timeshift"

    # Pipes 
    alias pipes="pipes -p 10"

    # Cmatrix 
    alias cmatrix="cmatrix -u 3"

    # Cd
    alias ..="cd .."
end

fish_add_path /home/dastarruer/.spicetify
export PATH="$PATH:$HOME/.spicetify"
