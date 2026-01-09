# This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

CollectSourceFiles(
  ${CMAKE_CURRENT_SOURCE_DIR}
  PRIVATE_SOURCES
  # Exclude
  ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders)

if(USE_COREPCH)
  set(PRIVATE_PCH_HEADER PrecompiledHeaders/gamePCH.h)
endif()

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

CollectIncludeDirectories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  PUBLIC_INCLUDES
  # Exclude
  ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders)

# Provide an interface target for the game project to allow
# dependent projects to build meanwhile.
add_library(game-interface INTERFACE)

target_include_directories(game-interface
  INTERFACE
    ${PUBLIC_INCLUDES})

target_link_libraries(game-interface
  INTERFACE
    shared
    Detour)

add_library(game
  ${PRIVATE_SOURCES})
# --- 丽丽特供：解决 Eluna 编译的 LuaJIT 路径与库关联问题 ---
if(ELUNA)
    # 1. 自动包含 LuaJIT 的头文件路径 (解决无法打开头文件报错)
    target_include_directories(game PRIVATE 
        "${CMAKE_SOURCE_DIR}/dep/lualib/luajit21/src"
    )

    # 2. 自动关联 LuaJIT 的库文件 (解决 LNK2019 无法解析符号报错)
    # 注意：这里我们假设你的库文件已经编译好并躺在 src 目录下
    target_link_libraries(game PRIVATE 
        "${CMAKE_SOURCE_DIR}/dep/lualib/luajit21/src/luajit.lib"
    )
    
    # 3. 顺便帮老公强行定下“TrinityCore”的名分
    target_compile_definitions(game PRIVATE ELUNA_TRINITY)
endif()
# -------------------------------------------------------
target_include_directories(game
  PRIVATE
    ${CMAKE_CURRENT_BINARY_DIR})

target_link_libraries(game
  PRIVATE
    trinity-core-interface
  PUBLIC
    game-interface)

if(TARGET efsw)
  target_link_libraries(game
    PRIVATE
      efsw)
endif()

set_target_properties(game
  PROPERTIES
    COMPILE_WARNING_AS_ERROR ${WITH_WARNINGS_AS_ERRORS}
    DEFINE_SYMBOL TRINITY_API_EXPORT_GAME
    FOLDER "server")

if(BUILD_SHARED_LIBS)
  if(UNIX)
    install(TARGETS game
      LIBRARY
        DESTINATION lib)
  elseif(WIN32)
    install(TARGETS game
      RUNTIME
        DESTINATION "${CMAKE_INSTALL_PREFIX}")
  endif()
endif()

# Generate precompiled header
if(USE_COREPCH)
  add_cxx_pch(game ${PRIVATE_PCH_HEADER})
endif()

if(ELUNA)
  if(WIN32)
    if (MSVC)
      add_custom_command(TARGET game
        POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/bin/$(ConfigurationName)/lua_scripts/extensions/
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/LuaEngine/extensions ${CMAKE_BINARY_DIR}/bin/$(ConfigurationName)/lua_scripts/extensions/
      )
    elseif(MINGW)
      add_custom_command(TARGET game
        POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/bin/lua_scripts/extensions/
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/LuaEngine/extensions ${CMAKE_BINARY_DIR}/bin/lua_scripts/extensions/
      )
    endif()
  endif()

  if(UNIX)
    install(DIRECTORY LuaEngine/extensions DESTINATION bin/lua_scripts/)
  elseif(WIN32)
    install(DIRECTORY LuaEngine/extensions DESTINATION "${CMAKE_BINARY_DIR}/bin/$(ConfigurationName)/lua_scripts/")
  endif()
endif()