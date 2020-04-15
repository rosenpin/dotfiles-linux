killall -q polybar
export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar  --config="$HOME/.config/polybar/config.ini" top &
export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar  --config="$HOME/.config/polybar/config.ini" bottombar &
