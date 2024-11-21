vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mtorralba24-chev/Test_Library_CPP
  REF c3947a65f94890ff3a50750c2958fe5243341897
  SHA512 058c2117dfb7d8aa59fbcab2342848178caaec6d94c182000c26fe8de3b481434bf957637db0f9869c2fe3c8a5fc4d6f25f1d647ceae8085d365aa4be8df1101
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
