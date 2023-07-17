ExternalProject_Add(ffmpeg
        DEPENDS
        amf-headers
        nvcodec-headers
        bzip2
        gmp
        lame
        libass
        libpng
        libsoxr
        libbs2b
        libwebp
        libzimg
        libmysofa
        fontconfig
        harfbuzz
        opus
        speex
        vorbis
        libvpl
        libjxl
        libxml2
        shaderc
        libplacebo
        libaribcaption
        dav1d
        mbedtls
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

        --disable-gpl
        --disable-nonfree
        --enable-version3
        --disable-static
        --disable-vulkan
        --disable-iconv

        --disable-muxers
        --disable-decoders
        --disable-encoders
        --disable-demuxers
        --disable-parsers
        --disable-protocols
        --disable-filters
        --disable-doc
        --disable-postproc
        --disable-programs
        --disable-gray
        --disable-swscale-alpha

        --enable-bsfs
        --enable-stripping

        --enable-amf
        --enable-cuda
        --enable-nvdec
        --enable-nvenc
        --enable-cuvid
        --enable-dxva2
        --enable-libmfx
        --enable-d3d11va

        --disable-vaapi
        --disable-vdpau
        --disable-bzlib
        --disable-libmfx
        --disable-libuavs3d
        --enable-ffnvcodec
        --disable-linux-perf
        --disable-videotoolbox
        --disable-audiotoolbox

        --disable-bsf=mjpeg2jpeg
        --disable-bsf=mjpega_dump_header
        --disable-bsf=mov2textsub
        --disable-bsf=text2movsub
        --disable-bsf=eac3_core

        --enable-small
        --enable-shared
        --enable-hwaccels
        --enable-optimizations
        --enable-runtime-cpudetect

        --enable-mbedtls

        --enable-libjxl

        --enable-libvpl
        --enable-libbs2b
        --enable-libwebp
        --enable-libzimg
        --enable-libxml2
        --enable-libsoxr
        --enable-libspeex
        --enable-libmysofa
        --enable-libplacebo
        --enable-libshaderc
        --enable-libfribidi
        --enable-libfreetype
        --enable-libaribcaption

        --enable-avutil
        --enable-avcodec
        --enable-avfilter
        --enable-avformat
        --enable-avdevice
        --enable-swscale
        --enable-swresample

        --enable-decoder=flv
        --enable-decoder=flv
        --enable-decoder=h263
        --enable-decoder=h263i
        --enable-decoder=h263p
        --enable-decoder=h264*
        --enable-decoder=mpeg1video
        --enable-decoder=mpeg2*
        --enable-decoder=mpeg4*
        --enable-decoder=vp6
        --enable-decoder=vp6a
        --enable-decoder=vp6f
        --enable-decoder=vp8*
        --enable-decoder=vp9*
        --enable-decoder=hevc*
        --enable-decoder=av1*
        --enable-decoder=libdav1d

        --enable-decoder=aac*
        --enable-decoder=ac3
        --enable-decoder=alac
        --enable-decoder=als
        --enable-decoder=ape
        --enable-decoder=atrac*
        --enable-decoder=eac3
        --enable-decoder=flac
        --enable-decoder=gsm*
        --enable-decoder=mp1*
        --enable-decoder=mp2*
        --enable-decoder=mp3*
        --enable-decoder=mpc*
        --enable-decoder=opus
        --enable-decoder=ra*
        --enable-decoder=ralf
        --enable-decoder=shorten
        --enable-decoder=tak
        --enable-decoder=tta
        --enable-decoder=vorbis
        --enable-decoder=wavpack
        --enable-decoder=wma*
        --enable-decoder=pcm*
        --enable-decoder=dsd*

        --enable-decoder=ssa
        --enable-decoder=ass
        --enable-decoder=dvbsub
        --enable-decoder=dvdsub
        --enable-decoder=srt
        --enable-decoder=stl
        --enable-decoder=subrip
        --enable-decoder=subviewer
        --enable-decoder=subviewer1
        --enable-decoder=text
        --enable-decoder=vplayer
        --enable-decoder=webvtt

        --enable-decoder=mjpeg
        --enable-decoder=ljpeg
        --enable-decoder=jpegls
        --enable-decoder=jpeg2000
        --enable-decoder=png
        --enable-decoder=gif
        --enable-decoder=bmp
        --enable-decoder=tiff
        --enable-decoder=webp
        --enable-decoder=jpegls

        --enable-demuxer=concat
        --enable-demuxer=data
        --enable-demuxer=flv
        --enable-demuxer=hls
        --enable-demuxer=latm
        --enable-demuxer=live_flv
        --enable-demuxer=loas
        --enable-demuxer=m4v
        --enable-demuxer=mov
        --enable-demuxer=mpegps
        --enable-demuxer=mpegts
        --enable-demuxer=mpegvideo
        --enable-demuxer=hevc
        --enable-demuxer=rtsp
        --enable-demuxer=mpeg4
        --enable-demuxer=mjpeg
        --enable-demuxer=avi
        --enable-demuxer=av1
        --enable-demuxer=matroska
        --enable-demuxer=dash
        --enable-demuxer=webm_dash_manifest

        --enable-demuxer=aac
        --enable-demuxer=ac3
        --enable-demuxer=aiff
        --enable-demuxer=ape
        --enable-demuxer=asf
        --enable-demuxer=au
        --enable-demuxer=avi
        --enable-demuxer=flac
        --enable-demuxer=flv
        --enable-demuxer=matroska
        --enable-demuxer=mov
        --enable-demuxer=m4v
        --enable-demuxer=mp3
        --enable-demuxer=mpc*
        --enable-demuxer=ogg
        --enable-demuxer=pcm*
        --enable-demuxer=rm
        --enable-demuxer=shorten
        --enable-demuxer=tak
        --enable-demuxer=tta
        --enable-demuxer=wav
        --enable-demuxer=wv
        --enable-demuxer=xwma
        --enable-demuxer=dsf
        --enable-demuxer=dts
        --enable-demuxer=truehd

        --enable-demuxer=ass
        --enable-demuxer=srt
        --enable-demuxer=stl
        --enable-demuxer=webvtt
        --enable-demuxer=subviewer
        --enable-demuxer=subviewer1
        --enable-demuxer=vplayer

        --enable-parser=h263
        --enable-parser=h264
        --enable-parser=hevc
        --enable-parser=mpeg4
        --enable-parser=mpeg4video
        --enable-parser=mpegvideo

        --enable-parser=aac*
        --enable-parser=ac3
        --enable-parser=cook
        --enable-parser=dca
        --enable-parser=flac
        --enable-parser=gsm
        --enable-parser=mpegaudio
        --enable-parser=tak
        --enable-parser=vorbis

        --enable-filter=overlay
        --enable-filter=equalizer

        --enable-protocol=async
        --enable-protocol=cache
        --enable-protocol=data
        --enable-protocol=ffrtmphttp
        --enable-protocol=file
        --enable-protocol=ftp
        --enable-protocol=hls
        --enable-protocol=http
        --enable-protocol=httpproxy
        --enable-protocol=https
        --enable-protocol=pipe
        --enable-protocol=rtmp
        --enable-protocol=rtmps
        --enable-protocol=rtmpt
        --enable-protocol=rtmpts
        --enable-protocol=rtp
        --enable-protocol=subfile
        --enable-protocol=tcp
        --enable-protocol=tls
        --enable-protocol=srt

        --enable-network

        "--extra-libs='-lstdc++'"
        BUILD_COMMAND ${MAKE}
        INSTALL_COMMAND ${MAKE} install
        LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(ffmpeg)
cleanup(ffmpeg install)
