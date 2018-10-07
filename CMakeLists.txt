cmake_minimum_required(VERSION 3.12)
project(Heuristic_assignment)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

include_directories(include)

add_executable(Heuristic_assignment
        include/Edge.h
        include/Graph.h
        include/solution.h
        include/Types.h
        src/Graph.cpp
        src/solution.cpp
        main.cpp include/Route.h src/Route.cpp include/Neighborhood.h src/Neighborhood.cpp)
