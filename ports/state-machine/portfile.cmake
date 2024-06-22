vcpkg_check_linkage(ONLY_DYNAMIC_CRT)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO khengling/StateMachine
    REF fd82f4b6faae364dfc1008e574893918c064398a
    SHA512 17b997539d826cece61d8aa3347a97ea9b0ff02c7cb0f6bafce79b6b16348cc5174e5fcd372a629a608ce571e3c7fb159701a8b26d784de14d5bd9c8acece7f7
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