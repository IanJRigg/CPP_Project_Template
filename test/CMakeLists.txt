cmake_minimum_required(VERSION 3.12)

if(${CMAKE_VERSION} VERSION_LESS 3.12)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
endif()

set(TEST_RUNNER_NAME testRunner)
project(${TEST_RUNNER_NAME} VERSION 1.0 LANGUAGES CXX)

set(TEST_SOURCE_FILES
    test-runner.cpp
)

set(TEST_HEADER_FILES
    ../include/catch2/catch.hpp
)

add_executable(
    ${TEST_RUNNER_NAME}
    ${TEST_SOURCE_FILES}
    ${TEST_HEADER_FILES}
)

set_target_properties(
    ${TEST_RUNNER_NAME}
    PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO
)

target_include_directories(
    ${TEST_RUNNER_NAME}
    PRIVATE
        ../include/
)
