find_package(Python3 COMPONENTS Interpreter Development REQUIRED)
find_package(Python3 COMPONENTS NumPy)

target_link_libraries(${PROJECT_NAME} PRIVATE
        Python3::Python
        Python3::Module
)

if (Python3_NumPy_FOUND)
    target_link_libraries(${PROJECT_NAME} PRIVATE Python3::NumPy)
else ()
    target_compile_definitions(${PROJECT_NAME} WITHOUT_NUMPY)
endif ()