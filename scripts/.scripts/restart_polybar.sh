export OUTPUT_DEVICE=$(~/.scripts/get_sink.sh)
echo $OUTPUT_DEVICE

set -x


if [[ ! -z $1 ]]; then
    kill -9 $(pgrep -f topbar)
    export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar  --config="$HOME/.config/polybar/config.ini" topbar &
fi

if [[ ! -z $2 ]]; then
    kill -9 $(pgrep -f bottombar)
    export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar  --config="$HOME/.config/polybar/config.ini" bottombar &
fi
