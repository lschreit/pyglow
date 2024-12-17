cmake_minimum_required(VERSION 3.17.2...3.26)

# Common settings
find_package(Python REQUIRED COMPONENTS Interpreter Development.Module NumPy)
set(DL_MODELS "${CMAKE_SOURCE_DIR}/src/pyglow/models/dl_models")
# F2PY headers
execute_process(
        COMMAND "${Python_EXECUTABLE}"
        -c "import numpy.f2py; print(numpy.f2py.get_include())"
        OUTPUT_VARIABLE F2PY_INCLUDE_DIR
        OUTPUT_STRIP_TRAILING_WHITESPACE
)


# Function to preprocess Fortran files to remove non-ASCII characters
add_custom_target(
        remove_non_ascii ALL
        COMMAND ${Python_EXECUTABLE} ${CMAKE_SOURCE_DIR}/remove_non_ascii.py ${DL_MODELS}
)

# Custom target to reencode files from cp1251 to utf-8
add_custom_target(
        reencode_files ALL
        COMMAND ${Python_EXECUTABLE} ${CMAKE_SOURCE_DIR}/reencode_files.py ${DL_MODELS}/hwm07
)

# Custom target to run make command
add_custom_target(
        run_make_command ALL
        COMMAND ${CMAKE_COMMAND} -E env bash -c "make -C ${DL_MODELS}/hwm07 sig"
        #WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

# Function to add a project
function(add_project project_name fortran_files pyf_file compile_options)
    #project(${project_name} VERSION 1.0.0 LANGUAGES C Fortran)

    set(f2py_module_name ${project_name})
    set(fortran_src_file "${DL_MODELS}/${fortran_files}")
    message(STATUS "Fortran source files: ${fortran_src_file}")
    message(STATUS "CMAKE source directory: ${CMAKE_SOURCE_DIR}")
    set(f2py_module_c "${f2py_module_name}module.c")

    add_custom_command(
            OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/${f2py_module_c}"
            COMMAND ${PYTHON_EXECUTABLE} -m numpy.f2py
            "${fortran_src_file}"
            "${DL_MODELS}/${pyf_file}"  # Must include custom .pyf file
            -m ${f2py_module_name}
            --lower # Important
            DEPENDS remove_non_ascii reencode_files run_make_command "${fortran_files}" # Fortran source

    )

    python_add_library(${CMAKE_PROJECT_NAME} MODULE
            "${f2py_module_name}module.c"
            "${F2PY_INCLUDE_DIR}/fortranobject.c"
            "${fortran_src_file}" WITH_SOABI)

    target_include_directories(${f2py_module_name} PUBLIC
            ${F2PY_INCLUDE_DIR})
    target_compile_options(${project_name} PRIVATE ${compile_options})
    target_link_libraries(${f2py_module_name} PUBLIC Python::NumPy)

    install(TARGETS ${f2py_module_name} DESTINATION ${project_name})
endfunction()

# IGRF 11
set(project_name "igrf11py")
project(${project_name} VERSION 1.0.0 LANGUAGES C Fortran)
add_project(${project_name}
        "igrf11/igrf11_modified.f"
        "igrf11/sig_file_patched.pyf"
        "-std=legacy"
)
#[===[
# IGRF 12
add_project(igrf12py
        "igrf12/igrf12_modified.f"
        "igrf12/sig_file_patched.pyf"
        "-std=legacy"
)

# HWM 93
add_project(hwm93py
        "hwm93/hwm93_modified.f"
        "hwm93/sig_file_patched.pyf"
        "-std=legacy"
)

# HWM 07

add_project(hwm07py
        "hwm07/hwm07e_modified.f90;hwm07/apexcord.f90"
        "hwm07/sig_file.pyf"
        "-fPIC"
)

# HWM 14
add_project(hwm14py
        "hwm14/hwm14.f90"
        "hwm14/sig_file.pyf"
        "-std=legacy"
)

# IRI 12
add_project(iri12py
        "iri12/cira.for;iri12/igrf.for;iri12/iridreg_modified.for;iri12/irifun.for;iri12/irisub.for;iri12/iritec.for;iri12/iriflip.for"
        "iri12/sig_file_patched.pyf"
        "-std=legacy"
        "-w"
        "-O2"
        "-fbacktrace"
        "-fno-automatic"
        "-fPIC"
)

# IRI 16
add_project(iri16py
        "iri16/cira.for;iri16/igrf.for;iri16/iridreg_modified.for;iri16/irifun.for;iri16/irisub.for;iri16/iritec.for;iri16/iriflip_modified.for;iri16/cosd_sind.for"
        "iri16/sig_file_patched.pyf"
        "-std=legacy"
        "-w"
        "-O2"
        "-fbacktrace"
        "-fno-automatic"
        "-fPIC"
)
# IRI 20
add_project(iri20py
        "iri20/cira.for;iri20/igrf.for;iri20/iridreg_modified.for;iri20/irifun.for;iri20/irisub.for;iri20/iritec.for;iri20/iriflip_modified.for;iri20/cosd_sind.for;iri20/rocdrift.for"
        "iri20/sig_file_patched.pyf"
        "-std=legacy"
        "-w"
        "-O2"
        "-fbacktrace"
        "-fno-automatic"
        "-fPIC"
)


# MSIS 00
add_project(msis00py
        "msis/nrlmsise00_sub_patched.for"
        "msis/sig_file_patched.pyf"
        "-std=legacy"
)
]===]
project(pyglow VERSION 0.1.0 LANGUAGES C Fortran)
# Install data files
install(FILES
        src/pyglow/models/dl_models/hwm07/apexgrid.dat
        src/pyglow/models/dl_models/hwm07/dwm07b_104i.dat
        src/pyglow/models/dl_models/hwm07/hwm071308e.dat
        DESTINATION hwm07_data/
)

install(FILES
        src/pyglow/models/dl_models/hwm14/gd2qd.dat
        src/pyglow/models/dl_models/hwm14/dwm07b104i.dat
        src/pyglow/models/dl_models/hwm14/hwm123114.bin
        DESTINATION hwm14_data/
)

install(FILES
        src/pyglow/models/dl_models/iri12/apf107.dat
        src/pyglow/models/dl_models/iri12/ccir11.asc
        src/pyglow/models/dl_models/iri12/ccir12.asc
        src/pyglow/models/dl_models/iri12/ccir13.asc
        src/pyglow/models/dl_models/iri12/ccir14.asc
        src/pyglow/models/dl_models/iri12/ccir15.asc
        src/pyglow/models/dl_models/iri12/ccir16.asc
        src/pyglow/models/dl_models/iri12/ccir17.asc
        src/pyglow/models/dl_models/iri12/ccir18.asc
        src/pyglow/models/dl_models/iri12/ccir19.asc
        src/pyglow/models/dl_models/iri12/ccir20.asc
        src/pyglow/models/dl_models/iri12/ccir21.asc
        src/pyglow/models/dl_models/iri12/ccir22.asc
        src/pyglow/models/dl_models/iri12/dgrf1945.dat
        src/pyglow/models/dl_models/iri12/dgrf1950.dat
        src/pyglow/models/dl_models/iri12/dgrf1955.dat
        src/pyglow/models/dl_models/iri12/dgrf1960.dat
        src/pyglow/models/dl_models/iri12/dgrf1965.dat
        src/pyglow/models/dl_models/iri12/dgrf1970.dat
        src/pyglow/models/dl_models/iri12/dgrf1975.dat
        src/pyglow/models/dl_models/iri12/dgrf1980.dat
        src/pyglow/models/dl_models/iri12/dgrf1985.dat
        src/pyglow/models/dl_models/iri12/dgrf1990.dat
        src/pyglow/models/dl_models/iri12/dgrf1995.dat
        src/pyglow/models/dl_models/iri12/dgrf2000.dat
        src/pyglow/models/dl_models/iri12/dgrf2005.dat
        src/pyglow/models/dl_models/iri12/ig_rz_IPS.dat
        src/pyglow/models/dl_models/iri12/ig_rz_SEC.dat
        src/pyglow/models/dl_models/iri12/ig_rz.dat
        src/pyglow/models/dl_models/iri12/igrf2010.dat
        src/pyglow/models/dl_models/iri12/igrf2010s.dat
        src/pyglow/models/dl_models/iri12/ursi11.asc
        src/pyglow/models/dl_models/iri12/ursi12.asc
        src/pyglow/models/dl_models/iri12/ursi13.asc
        src/pyglow/models/dl_models/iri12/ursi14.asc
        src/pyglow/models/dl_models/iri12/ursi15.asc
        src/pyglow/models/dl_models/iri12/ursi16.asc
        src/pyglow/models/dl_models/iri12/ursi17.asc
        src/pyglow/models/dl_models/iri12/ursi18.asc
        src/pyglow/models/dl_models/iri12/ursi19.asc
        src/pyglow/models/dl_models/iri12/ursi20.asc
        src/pyglow/models/dl_models/iri12/ursi21.asc
        src/pyglow/models/dl_models/iri12/ursi22.asc
        DESTINATION iri12_data/
)

install(FILES
        src/pyglow/models/dl_models/iri16/apf107.dat
        src/pyglow/models/dl_models/iri16/ccir11.asc
        src/pyglow/models/dl_models/iri16/ccir12.asc
        src/pyglow/models/dl_models/iri16/ccir13.asc
        src/pyglow/models/dl_models/iri16/ccir14.asc
        src/pyglow/models/dl_models/iri16/ccir15.asc
        src/pyglow/models/dl_models/iri16/ccir16.asc
        src/pyglow/models/dl_models/iri16/ccir17.asc
        src/pyglow/models/dl_models/iri16/ccir18.asc
        src/pyglow/models/dl_models/iri16/ccir19.asc
        src/pyglow/models/dl_models/iri16/ccir20.asc
        src/pyglow/models/dl_models/iri16/ccir21.asc
        src/pyglow/models/dl_models/iri16/ccir22.asc
        src/pyglow/models/dl_models/iri16/dgrf1945.dat
        src/pyglow/models/dl_models/iri16/dgrf1950.dat
        src/pyglow/models/dl_models/iri16/dgrf1955.dat
        src/pyglow/models/dl_models/iri16/dgrf1960.dat
        src/pyglow/models/dl_models/iri16/dgrf1965.dat
        src/pyglow/models/dl_models/iri16/dgrf1970.dat
        src/pyglow/models/dl_models/iri16/dgrf1975.dat
        src/pyglow/models/dl_models/iri16/dgrf1980.dat
        src/pyglow/models/dl_models/iri16/dgrf1985.dat
        src/pyglow/models/dl_models/iri16/dgrf1990.dat
        src/pyglow/models/dl_models/iri16/dgrf1995.dat
        src/pyglow/models/dl_models/iri16/dgrf2000.dat
        src/pyglow/models/dl_models/iri16/dgrf2005.dat
        src/pyglow/models/dl_models/iri16/dgrf2010.dat
        src/pyglow/models/dl_models/iri16/dgrf2015.dat
        src/pyglow/models/dl_models/iri16/ig_rz.dat
        src/pyglow/models/dl_models/iri16/igrf2020.dat
        src/pyglow/models/dl_models/iri16/igrf2020s.dat
        src/pyglow/models/dl_models/iri16/mcsat11.dat
        src/pyglow/models/dl_models/iri16/mcsat12.dat
        src/pyglow/models/dl_models/iri16/mcsat13.dat
        src/pyglow/models/dl_models/iri16/mcsat14.dat
        src/pyglow/models/dl_models/iri16/mcsat15.dat
        src/pyglow/models/dl_models/iri16/mcsat16.dat
        src/pyglow/models/dl_models/iri16/mcsat17.dat
        src/pyglow/models/dl_models/iri16/mcsat18.dat
        src/pyglow/models/dl_models/iri16/mcsat19.dat
        src/pyglow/models/dl_models/iri16/mcsat20.dat
        src/pyglow/models/dl_models/iri16/mcsat21.dat
        src/pyglow/models/dl_models/iri16/mcsat22.dat
        src/pyglow/models/dl_models/iri16/ursi11.asc
        src/pyglow/models/dl_models/iri16/ursi12.asc
        src/pyglow/models/dl_models/iri16/ursi13.asc
        src/pyglow/models/dl_models/iri16/ursi14.asc
        src/pyglow/models/dl_models/iri16/ursi15.asc
        src/pyglow/models/dl_models/iri16/ursi16.asc
        src/pyglow/models/dl_models/iri16/ursi17.asc
        src/pyglow/models/dl_models/iri16/ursi18.asc
        src/pyglow/models/dl_models/iri16/ursi19.asc
        src/pyglow/models/dl_models/iri16/ursi20.asc
        src/pyglow/models/dl_models/iri16/ursi21.asc
        src/pyglow/models/dl_models/iri16/ursi22.asc
        DESTINATION iri16_data/
)

install(FILES
        src/pyglow/models/dl_models/iri20/apf107.dat
        src/pyglow/models/dl_models/iri20/ccir11.asc
        src/pyglow/models/dl_models/iri20/ccir12.asc
        src/pyglow/models/dl_models/iri20/ccir13.asc
        src/pyglow/models/dl_models/iri20/ccir14.asc
        src/pyglow/models/dl_models/iri20/ccir15.asc
        src/pyglow/models/dl_models/iri20/ccir16.asc
        src/pyglow/models/dl_models/iri20/ccir17.asc
        src/pyglow/models/dl_models/iri20/ccir18.asc
        src/pyglow/models/dl_models/iri20/ccir19.asc
        src/pyglow/models/dl_models/iri20/ccir20.asc
        src/pyglow/models/dl_models/iri20/ccir21.asc
        src/pyglow/models/dl_models/iri20/ccir22.asc
        src/pyglow/models/dl_models/iri20/dgrf1945.dat
        src/pyglow/models/dl_models/iri20/dgrf1950.dat
        src/pyglow/models/dl_models/iri20/dgrf1955.dat
        src/pyglow/models/dl_models/iri20/dgrf1960.dat
        src/pyglow/models/dl_models/iri20/dgrf1965.dat
        src/pyglow/models/dl_models/iri20/dgrf1970.dat
        src/pyglow/models/dl_models/iri20/dgrf1975.dat
        src/pyglow/models/dl_models/iri20/dgrf1980.dat
        src/pyglow/models/dl_models/iri20/dgrf1985.dat
        src/pyglow/models/dl_models/iri20/dgrf1990.dat
        src/pyglow/models/dl_models/iri20/dgrf1995.dat
        src/pyglow/models/dl_models/iri20/dgrf2000.dat
        src/pyglow/models/dl_models/iri20/dgrf2005.dat
        src/pyglow/models/dl_models/iri20/dgrf2010.dat
        src/pyglow/models/dl_models/iri20/dgrf2015.dat
        src/pyglow/models/dl_models/iri20/ig_rz.dat
        src/pyglow/models/dl_models/iri20/igrf2020.dat
        src/pyglow/models/dl_models/iri20/igrf2020s.dat
        src/pyglow/models/dl_models/iri20/mcsat11.dat
        src/pyglow/models/dl_models/iri20/mcsat12.dat
        src/pyglow/models/dl_models/iri20/mcsat13.dat
        src/pyglow/models/dl_models/iri20/mcsat14.dat
        src/pyglow/models/dl_models/iri20/mcsat15.dat
        src/pyglow/models/dl_models/iri20/mcsat16.dat
        src/pyglow/models/dl_models/iri20/mcsat17.dat
        src/pyglow/models/dl_models/iri20/mcsat18.dat
        src/pyglow/models/dl_models/iri20/mcsat19.dat
        src/pyglow/models/dl_models/iri20/mcsat20.dat
        src/pyglow/models/dl_models/iri20/mcsat21.dat
        src/pyglow/models/dl_models/iri20/mcsat22.dat
        src/pyglow/models/dl_models/iri20/ursi11.asc
        src/pyglow/models/dl_models/iri20/ursi12.asc
        src/pyglow/models/dl_models/iri20/ursi13.asc
        src/pyglow/models/dl_models/iri20/ursi14.asc
        src/pyglow/models/dl_models/iri20/ursi15.asc
        src/pyglow/models/dl_models/iri20/ursi16.asc
        src/pyglow/models/dl_models/iri20/ursi17.asc
        src/pyglow/models/dl_models/iri20/ursi18.asc
        src/pyglow/models/dl_models/iri20/ursi19.asc
        src/pyglow/models/dl_models/iri20/ursi20.asc
        src/pyglow/models/dl_models/iri20/ursi21.asc
        src/pyglow/models/dl_models/iri20/ursi22.asc
        DESTINATION iri20_data/
)

file(GLOB kpap "src/pyglow/kpap/*")
install(FILES ${kpap}
        DESTINATION kpap/
)

file(GLOB dst "src/pyglow/dst/*")
install(FILES ${dst}
        DESTINATION dst/
)

file(GLOB ae "src/pyglow/ae/*")
install(FILES ${ae}
        DESTINATION ae/
)
