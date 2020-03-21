killall -q polybar
export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar top &
export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | tail -n1) && polybar bottombar &
