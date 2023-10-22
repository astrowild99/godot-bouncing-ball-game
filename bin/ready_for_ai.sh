#!/bin/sh
echo -ne '\033c\033]0;BallClearGame\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/ready_for_ai.x86_64" "$@"
