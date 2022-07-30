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
git clone https://github.com/sanjeevstunner/vendor_xiaomi_vayu.git -b 12.1 vendor/xiaomi/vayu
fi

# Hardware Tree
if [[ -d "hardware/xiaomi" ]]; then
echo "Looking for changes in hardware tree"
cd hardware/xiaomi && git pull && cd ../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/vendor_xiaomi_vayu.git -b 12.1 vendor/xiaomi/vayu
fi

# Kernel Tree
if [[ -d "kernel/xiaomi/vayu" ]]; then
echo "Looking for changes in kernel tree"
cd kernel/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/Jebaitedneko/android_kernel_xiaomi_vayu.git -b LA.UM.9.1.r1-12100-SMxxx0.QSSI12.0 kernel/xiaomi/vayu
fi

# Mi Parts
if [[ -d "vendor/xiaomi/devicesettings" ]]; then
echo "Looking for changes in MiParts Repo"
cd vendor/xiaomi/devicesettings && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/vendor_xiaomi_device_settings.git -b los vendor/xiaomi/devicesettings
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

# Pixel Launcher MOD
if [[ -d "vendor/pixel/launcher" ]]; then
echo "Looking for changes in Pixel Launcher MOD Repo"
cd vendor/pixel/launcher && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/vendor_pixel_launcher.git vendor/pixel/launcher
fi
