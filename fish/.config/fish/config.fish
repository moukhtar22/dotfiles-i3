if status --is-interactive
    #Aliases    
    alias update="sudo apt update && sudo apt upgrade"    

    alias grep="grep -i"

    alias apt="sudo apt"

    alias timeshift="sudo timeshift"

    alias pipes="pipes -p 10"

    alias cmatrix="cmatrix -u 3 -C magenta"

    alias ..="cd .."

    alias b="btop"
    
    alias ga="git add"
    alias gb="git branch"
    alias g.="git add ."
    alias gs="git status"
    alias gc="git commit -m"
    alias gp="git push"
    alias gl="git log"

    # Games
    # To add a new game, create a new directory with the game's name in /home/dastarruer/.local/share/Steam/steamapps/compatdata/{game}
    # The final alias should look like:
    # alias {game}="env STEAM_COMPAT_DATA_PATH=/home/dastarruer/.local/share/Steam/steamapps/compatdata/{game} STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/dastarruer/.steam/debian-installation /home/dastarruer/.steam/steam/steamapps/common/Proton\ 9.0\ \(Beta\)/proton run /home/dastarruer/Games/{path_to_exe}"
    alias superhot="env STEAM_COMPAT_DATA_PATH=/home/dastarruer/.local/share/Steam/steamapps/compatdata/superhot STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/dastarruer/.steam/debian-installation /home/dastarruer/.steam/steam/steamapps/common/Proton\ 9.0\ \(Beta\)/proton run /home/dastarruer/Games/SUPERHOT/SH.exe"

    alias cp="cp -r"
    alias rm="rm -r"
end

# Add spicetify to PATH
fish_add_path /home/dastarruer/.spicetify
export PATH="$PATH:$HOME/.spicetify"

# Disable touchpad palm rejection
xinput set-prop "ELAN06FA:00 04F3:32B9 Touchpad" "libinput Disable While Typing Enabled" 0

# Start starship
starship init fish | source
