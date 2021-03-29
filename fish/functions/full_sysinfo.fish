function full_sysinfo
    if type -q inxi
        inxi -Fxxxz
    else
        echo "inxi command not found"
        read -l -P 'Do you want to install inxi? [y/N]' confirm
        switch $confirm
            case Y y
                if type -q paru
                    paru -S inxi
                else
                    echo "AUR helper paru not found. Aborting"
                end
            case '' N n
                echo "Aborting"
        end
    end
end
