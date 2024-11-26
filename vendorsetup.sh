color="\033[0;32m"
end="\033[0m"

# Kernel
echo -e "${color}Cloning kernel source and modules${end}"
git clone --depth=1 https://github.com/muralivijay/android_kernel_xiaomi_sm6225-5.15.git -b Main kernel/xiaomi/sm6225-5.15
git clone https://github.com/muralivijay/android_kernel_xiaomi_sm6225-devicetrees.git -b main kernel/xiaomi/sm6225-devicetrees
git clone https://github.com/muralivijay/android_kernel_xiaomi_sm6225-modules.git -b main kernel/xiaomi/sm6225-modules

# Vendor
echo -e "${color}Cloning vendor tree${end}"
git clone https://github.com/muralivijay/android_vendor_xiaomi_spes-5.15.git -b lineage-20 vendor/xiaomi/spes

# Hardware
echo -e "${color}Cloning xiaomi hardware${end}"
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-20 hardware/xiaomi
