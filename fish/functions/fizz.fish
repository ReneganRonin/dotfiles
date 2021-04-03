function fizz
    if type -q fzf
        if type -q bat
            fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"
        else
            read -l -P 'Do you want to install "bat"? [y/N]' confirm
            switch $confirm
                case Y y
                    sudo pacman -S bat
                    fzf --preview "bat --color=always --style=numbers --line-range:500 {}"
                case N n ''
                    echo "Aborting. Using usual fzf command"
                    fzf
            end
        end
    else
        echo "fzf command not found. Please install using bat and fzf for a nice experience"
        sudo pacman -S fzf
    end
end
   
