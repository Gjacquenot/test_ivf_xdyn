IF("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
    # using Intel C++
    IF(CMAKE_SIZEOF_VOID_P EQUAL 8) # If on a 64 bit machine
        IF(UNIX AND NOT WIN32) # If on Linux
            SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
            SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
        ENDIF()
    ENDIF()
ENDIF()
