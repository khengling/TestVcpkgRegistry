vcpkg_check_linkage(ONLY_DYNAMIC_CRT)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO khengling/StateMachine
    REF 7a4062ddca9986735c69f0ecfeed0cab128c8696
    SHA512 f7ade163143f87347b9ab4c66803c4899886195579cead1ade7fc277957ae328af1e2e11e4fd9c13c06693d68f7fdf0b728e82175ca997d6331f9d7a03500337
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