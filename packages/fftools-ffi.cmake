ExternalProject_Add(fftools-ffi
    DEPENDS
        ffmpeg
    GIT_REPOSITORY https://github.com/moffatman/fftools-ffi.git
    SOURCE_DIR ${SOURCE_LOCATION}
    GIT_TAG main
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ${EXEC} meson <BINARY_DIR> <SOURCE_DIR>
        --prefix=${MINGW_INSTALL_PREFIX}
        --libdir=${MINGW_INSTALL_PREFIX}/lib
        --cross-file=${MESON_CROSS}
        --buildtype=release
        --default-library=static
    BUILD_COMMAND ${EXEC} ninja -C <BINARY_DIR>
    INSTALL_COMMAND ${EXEC} ninja -C <BINARY_DIR> install
    LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(fftools-ffi)
force_meson_configure(fftools-ffi)
cleanup(fftools-ffi install)
