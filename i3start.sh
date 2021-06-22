#!/usr/bin/env dash

export XDG_CURRENT_DESKTOP=i3
export MOZ_ENABLE_WAYLAND=0

# Runtime Directory
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/`id -u`-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi

# Start i3
if test -f /usr/bin/i3 ; then
	startx
fi
