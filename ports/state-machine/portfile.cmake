vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO khengling/StateMachine
    REF 3a856bb4385bd177764d1f9b47c991f0b386be47
    SHA512 62aed40be7b8b7681b701901633d44b295f5c6ad542cd0bea704bc31bec5e7051c95e7e654b6bce4a3de3238e1e9eb14bf622cec8d1ad267be5198d5c27dca48
    HEAD_REF master
)


vcpkg_msbuild_install(
    SOURCE_PATH "${SOURCE_PATH}"
    PROJECT_SUBPATH StateMachine.sln
)

file(
    INSTALL "${SOURCE_PATH}/StateMachine/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include"
    FILES_MATCHING PATTERN "*.h"
)

vcpkg_install_copyright(
    FILE_LIST "${SOURCE_PATH}/LICENSE.txt"
)