workspace=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused)' | jq -r '.name')
binding_status=$(swaymsg -t get_binding_state | jq -r '.name')
if [[ $binding_status == "resize" ]]
then
    echo -e "視 Resize mode"
else
    echo -e "  Workspace $workspace"
fi

