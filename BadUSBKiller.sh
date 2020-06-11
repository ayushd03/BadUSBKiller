lsusb>devices
while read p; do
  if [[ "$p" == *"MOUSE"* ]]; then
  	val=$(sed -e 's/Bus \([0-9]\+\) Device \([0-9]\+\).*/\1\/\2/g' <<< $p)
  fi
done < devices
id=$(grep -l $val /sys/bus/usb/devices/*/uevent)
id1=$(sed -e 's/\/sys\/bus\/usb\/devices\/\(.*\)\/uevent/\1/' <<< $id)
echo $id1 > /sys/bus/usb/drivers/usb/unbind 