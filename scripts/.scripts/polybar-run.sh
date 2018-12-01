killall -q polybar
export MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1) && polybar rightm
