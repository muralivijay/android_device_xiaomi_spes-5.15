#!/vendor/bin/sh

# Get the value of the androidboot.fpsensor property
fpsensor=$(getprop ro.boot.fpsensor)

# Set fpsensor based on the detected fingerprint sensor
if [ "$fpsensor" = "fpc" ]; then
    insmod /vendor/lib/modules/fpc1020_platform_tee.ko
else
    insmod /vendor/lib/modules/goodix_fp.ko
fi
