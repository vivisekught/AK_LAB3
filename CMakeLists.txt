cmake_minimum_required(VERSION 3.23)
project(IO_03_Malii_AK_LAB3 C)

option(USE_STATIC "Use static library" ON)
message(STATUS "OS: ${CMAKE_SYSTEM_NAME}")
message(STATUS "Compile with static library? ${USE_STATIC}")

add_executable(IO_03_Malii_AK_LAB3 src/main.c)

add_library(message-objs
        OBJECT
        src/library.h
        src/library.c)

target_compile_options(message-objs
        PRIVATE
            -Wall -fPIC
        )

if(USE_STATIC)
    add_library(message-a
            STATIC
                $<TARGET_OBJECTS:message-objs>
            )
    target_link_libraries(IO_03_Malii_AK_LAB3 message-a)

else()
    add_library(message-so
            SHARED
                $<TARGET_OBJECTS:message-objs>
            )
    target_link_libraries(IO_03_Malii_AK_LAB3 message-so)
endif()