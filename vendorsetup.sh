# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Looking for changes in device tree"
cd device/xiaomi/vayu && git pull && cd ../../..
echo ""

# Vendor Tree
if [[ -d "vendor/xiaomi/vayu" ]]; then
echo "Looking for changes in vendor tree"
cd vendor/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/vendor_xiaomi_vayu.git vendor/xiaomi/vayu
fi

# Kernel Tree
if [[ -d "kernel/xiaomi/vayu" ]]; then
echo "Looking for changes in kernel tree"
cd kernel/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/Jebaitedneko/android_kernel_xiaomi_vayu.git -b r2 kernel/xiaomi/vayu
fi

# Mi Parts
if [[ -d "vendor/xiaomi/devicesettings" ]]; then
echo "Looking for changes in MiParts Repo"
cd vendor/xiaomi/devicesettings && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/PixelPlusUI-Devices/vayu_vendor_xiaomi_device_settings.git vendor/xiaomi/devicesettings
fi

# Google Camera
if [[ -d "vendor/Gcam" ]]; then
echo "Looking for changes in GCam Repo"
cd vendor/Gcam && git pull && cd ../..
echo ""
else
echo ""
git clone https://gitlab.com/sanjeevstunner/vendor-g-cam-bsg.git vendor/Gcam
fi

# Evolution security
if [[ -d "vendor/evolution/build/target/product/security" ]]; then
echo "Looking for changes in Evolution security"
cd vendor/evolution/build/target/product/security && git pull && cd ../../../../../..
echo ""
else
echo ""
git clone https://github.com/Evolution-X/evolution_security.git vendor/evolution/build/target/product/security
fi
