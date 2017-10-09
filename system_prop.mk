# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d/dev/smd0 \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=3 \
    ro.com.android.mobiledata=false \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1 \
    mm.enable.smoothstreaming=true \
    use.dedicated.device.for.voip=true \
    use.voice.path.for.pcm.voip=true \
    media.aac_51_output_enabled=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    debug.hwui.use_buffer_age=false \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.sf.lcd_density=240 \
    ro.opengles.version=196608 \
    ro.qualcomm.cabl=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
    camera.disable_zsl_mode=1

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=smd \
    ro.bluetooth.dun=true \
    ro.bluetooth.sap=true \
    ro.bluetooth.hfp.ver=1.6 \
    ro.qualcomm.bt.hci_transport=smd

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.chipname=MSM8930 \
    wifi.interface=wlan0

    
# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=true \
    ro.am.reschedule_service=true

# Our low-ram optimizations below

# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=384m \
    dalvik.vm.dex2oat-threads=2

# Low-RAM optimizations
ADDITIONAL_BUILD_PROPERTIES += \
    config.disable_atlas=true

# Intel's VM tunable recommendations
ADDITIONAL_BUILD_PROPERTIES += \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heapsize=174m \
    dalvik.vm.heapmaxfree=2m
     
# OpenGLRenderer Optimizations
ADDITIONAL_BUILD_PROPERTIES += \
    ro.hwui.text_large_cache_height=1024
