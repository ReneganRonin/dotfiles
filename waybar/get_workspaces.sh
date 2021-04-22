workspace=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused)' | jq -r '.name')

echo -e "  Workspace $workspace"
