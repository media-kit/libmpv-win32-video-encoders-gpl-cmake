ExternalProject_Add(ffmpeg
        DEPENDS
        amf-headers
        nvcodec-headers
        bzip2
        lame
        libssh
        libsrt
        libass
        libmodplug
        libpng
        libsoxr
        libbs2b
        libvpx
        libwebp
        libzimg
        libmysofa
        opus
        speex
        vorbis
        libxml2
        libvpl
        libopenmpt
        libjxl
        mbedtls
        shaderc
        libplacebo
        libzvbi
        libaribcaption
        rav1e
        dav1d
        uavs3d
        GIT_REPOSITORY https://github.com/FFmpeg/FFmpeg.git
        SOURCE_DIR ${SOURCE_LOCATION}
        GIT_CLONE_FLAGS "--filter=tree:0"
        UPDATE_COMMAND ""
        CONFIGURE_COMMAND ${EXEC} <SOURCE_DIR>/configure
        --cross-prefix=${TARGET_ARCH}-
        --prefix=${MINGW_INSTALL_PREFIX}
        --arch=${TARGET_CPU}
        --target-os=mingw32
        --target-exec=wine
        --pkg-config-flags=--static
        --enable-cross-compile
        --enable-runtime-cpudetect
        --enable-postproc
        --enable-libass
        --enable-libfreetype
        --enable-libfribidi
        --enable-libmodplug
        --enable-libopenmpt
        --enable-libmp3lame
        --enable-libopus
        --enable-libsoxr
        --enable-libspeex
        --enable-libvorbis
        --enable-libbs2b
        --enable-libvpx
        --enable-libwebp
        --enable-libuavs3d
        --enable-libzimg
        --enable-libxml2
        --enable-libmysofa
        --enable-libssh
        --enable-libsrt
        --enable-libvpl
        --enable-libjxl
	--enable-librav1e
        --enable-libdav1d
	--enable-libplacebo
        --enable-libshaderc
        --enable-libzvbi
        --enable-libaribcaption
        --enable-cuda
        --enable-cuvid
        --enable-nvdec
        --enable-nvenc
        --enable-amf
        
        # Disable muxers, encoders & filters since we are only targeting playback.

        --disable-muxers
        --disable-encoders
        --disable-filters
 
        # Enable overlay & equalizer audio filters.

        --enable-filter=overlay
	--enable-filter=equalizer

        # HTTPS support.
        
        --enable-version3
        --enable-mbedtls
        
        # Disable few more things.
        
        --disable-doc
        --disable-vaapi
        --disable-vdpau
        --disable-videotoolbox
        "--extra-libs='-lstdc++'" # Needed by libjxl and shaderc.
        BUILD_COMMAND ${MAKE}
        INSTALL_COMMAND ${MAKE} install
        LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(ffmpeg)
cleanup(ffmpeg install)
