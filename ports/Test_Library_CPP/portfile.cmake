vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mtorralba24-chev/Test_Library_CPP
  REF c3947a65f94890ff3a50750c2958fe5243341897
  SHA512 59639bea87d72ad08235df9dea1a54e222e3b0b7c13c8a96c097b480bf729d1f09c1de3590ae8bcd3f35dde1b90130a60f89df3eb25f43cd77a6b2a0e449f921
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
