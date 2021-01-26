export OUTPUT_DEVICE=$(~/.scripts/get_sink.sh)
echo $OUTPUT_DEVICE

set -x

kill -9 $(pgrep -f topbar)
kill -9 $(pgrep -f bottombar)

if [[ ! -z $1 ]]; then
    export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar  --config="$HOME/.config/polybar/config.ini" topbar &
fi

if [[ ! -z $2 ]]; then
    export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar  --config="$HOME/.config/polybar/config.ini" bottombar &
fi
