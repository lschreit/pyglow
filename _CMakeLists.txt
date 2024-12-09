cmake_minimum_required(VERSION 3.10)
cmake_minimum_required(VERSION 3.17.2...3.26)


project(pyglow
  VERSION 1.0.0
  DESCRIPTION "Atmospheric Models"
  LANGUAGES C Fortran
)

# Include directories
include_directories(${CMAKE_SOURCE_DIR}/src/pyglow)

find_package(Python REQUIRED COMPONENTS Interpreter Development.Module NumPy)

# F2PY headers
execute_process(
  COMMAND "${Python_EXECUTABLE}"
  -c "import numpy.f2py; print(numpy.f2py.get_include())"
  OUTPUT_VARIABLE F2PY_INCLUDE_DIR
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

# Add Fortran extensions
add_library(igrf11py SHARED 
    src/pyglow/models/dl_models/igrf11/igrf11_modified.f 
    src/pyglow/models/dl_models/igrf11/sig_file_patched.pyf)

add_library(igrf12py SHARED 
    src/pyglow/models/dl_models/igrf12/igrf12_modified.f 
    src/pyglow/models/dl_models/igrf12/sig_file_patched.pyf)

add_library(hwm93py SHARED 
    src/pyglow/models/dl_models/hwm93/hwm93_modified.f 
    src/pyglow/models/dl_models/hwm93/sig_file_patched.pyf)
target_compile_options(hwm93py PRIVATE -std=legacy)

add_library(hwm07py SHARED 
    src/pyglow/models/dl_models/hwm07/hwm07e_modified.f90 
    src/pyglow/models/dl_models/hwm07/apexcord.f90 
    src/pyglow/models/dl_models/hwm07/sig_file.pyf)

add_library(hwm14py SHARED 
    src/pyglow/models/dl_models/hwm14/hwm14.f90 
    src/pyglow/models/dl_models/hwm14/sig_file.pyf)
target_compile_options(hwm14py PRIVATE -std=legacy)

add_library(iri12py SHARED 
    src/pyglow/models/dl_models/iri12/cira.for 
    src/pyglow/models/dl_models/iri12/igrf.for 
    src/pyglow/models/dl_models/iri12/iridreg_modified.for 
    src/pyglow/models/dl_models/iri12/irifun.for 
    src/pyglow/models/dl_models/iri12/irisub.for 
    src/pyglow/models/dl_models/iri12/iritec.for 
    src/pyglow/models/dl_models/iri12/iriflip.for 
    src/pyglow/models/dl_models/iri12/sig_file_patched.pyf)
target_compile_options(iri12py PRIVATE 
    -std=legacy 
    -w 
    -O2 
    -fbacktrace 
    -fno-automatic 
    -fPIC)

add_library(iri16py SHARED 
    src/pyglow/models/dl_models/iri16/cira.for 
    src/pyglow/models/dl_models/iri16/igrf.for 
    src/pyglow/models/dl_models/iri16/iridreg_modified.for 
    src/pyglow/models/dl_models/iri16/irifun.for 
    src/pyglow/models/dl_models/iri16/irisub.for 
    src/pyglow/models/dl_models/iri16/iritec.for 
    src/pyglow/models/dl_models/iri16/iriflip_modified.for 
    src/pyglow/models/dl_models/iri16/cosd_sind.for 
    src/pyglow/models/dl_models/iri16/sig_file_patched.pyf)
target_compile_options(iri16py PRIVATE 
    -std=legacy 
    -w 
    -O2 
    -fbacktrace 
    -fno-automatic 
    -fPIC)
    
    


add_library(msis00py SHARED 
    src/pyglow/models/dl_models/msis/nrlmsise00_sub_patched.for 
    src/pyglow/models/dl_models/msis/sig_file_patched.pyf)
target_compile_options(msis00py PRIVATE -std=legacy)




add_custom_command(
  OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/${f2py_module_c}"
  COMMAND ${PYTHON_EXECUTABLE}  -m "numpy.f2py"
                   "${fortran_src_file}"
                   "${CMAKE_SOURCE_DIR}/pi/pi.pyf"  # Must include custom .pyf file
                   -m "pi"
                   --lower # Important
  DEPENDS pi/_pi.f # Fortran source
)

python_add_library(${CMAKE_PROJECT_NAME} MODULE
            "${f2py_module_name}module.c"
            "${F2PY_INCLUDE_DIR}/fortranobject.c"
            "${fortran_src_file}" WITH_SOABI)

target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC
                           ${F2PY_INCLUDE_DIR}
                          )

target_link_libraries(${CMAKE_PROJECT_NAME} PUBLIC Python::NumPy)

install(TARGETS ${CMAKE_PROJECT_NAME} DESTINATION pi)
