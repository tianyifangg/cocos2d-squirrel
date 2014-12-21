set(LUABINDING_SRC
  auto/squirrel_cocos2dx_auto.cpp
  manual/SquirrelEngine.cpp
  manual/SquirrelBasicConversion.cpp
)

include_directories(
  auto
  manual
  ../../editor-support/cocosbuilder
  ../../editor-support/cocostudio
  ../../editor-support/spine
  ../../ui
  ../../2d
  ../../3d
  ../../../external/squirrel/include
  ../../../external/xxtea
)


add_library(squirrelbinding STATIC
  ${LUABINDING_SRC}
)

target_link_libraries(squirrelbinding
squirrel
  spine
  xxtea
)

set_target_properties(squirrelbinding
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

