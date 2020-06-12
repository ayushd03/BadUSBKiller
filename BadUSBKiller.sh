while true; do
  while read p; do
    if [[ "$p" == *"Digispark"* ]]; then
  	  val=$(sed -e 's/Bus \([0-9]\+\) Device \([0-9]\+\).*/\1\/\2/g' <<< $p)
  	  id=$(grep -l $val /sys/bus/usb/devices/*/uevent) 2> /dev/null
      id1=$(sed -e 's/\/sys\/bus\/usb\/devices\/\(.*\)\/uevent/\1/' <<< $id) 2> /dev/null
      (echo $id1 > /sys/bus/usb/drivers/usb/unbind) 2> /dev/null
    fi
  done <<< $(lsusb)
done
