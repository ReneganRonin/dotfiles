#!/usr/bin/env dash

export XDG_CURRENT_DESKTOP=leftwm
export MOZ_ENABLE_WAYLAND=0
export XDG_DESKTOP_SESSION=x11

# Runtime Directory
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/`id -u`-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi

# Start leftwm
if test -f /usr/bin/leftwm ; then
	startx
fi

