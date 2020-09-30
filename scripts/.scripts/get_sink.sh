default_sink="$(pacmd list-sinks | grep index | awk '{ if ($1 == "*") print "1",$3; else print "0",$2 }' | grep ^1 | cut -d" " -f2)"

OUTPUT_DEVICE=$(pacmd list-sinks | grep $default_sink -A3 | grep "name:" | cut -d"<" -f2 | cut -d">" -f1)
echo $OUTPUT_DEVICE
