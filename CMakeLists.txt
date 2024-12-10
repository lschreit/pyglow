cmake_minimum_required(VERSION 3.13)
project(pyglow VERSION 0.1.0 LANGUAGES C Fortran)


# Find Python and NumPy
find_package(Python REQUIRED COMPONENTS Interpreter Development)
find_package(NumPy REQUIRED)
find_package(PythonExtensions REQUIRED)
find_package(Python COMPONENTS Interpreter Development REQUIRED)
find_package(Python ${PYTHON_VERSION} REQUIRED COMPONENTS Development)

include_directories(${Python_INCLUDE_DIRS} ${NUMPY_INCLUDE_DIRS})

set(DL_MODELS "src/pyglow/models/dl_models")
set(PYTHON_SITE_PACKAGES )

# IGRF 11
Python_add_library(igrf11py MODULE
  ${DL_MODELS}/igrf11/igrf11_modified.f
  ${DL_MODELS}/igrf11/sig_file_patched.pyf
)
target_compile_options(igrf11py PRIVATE -std=legacy)
target_include_directories(igrf11py PRIVATE ${NUMPY_INCLUDE_DIRS})

# IGRF 12
Python_add_library(igrf12py MODULE
  ${DL_MODELS}/igrf12/igrf12_modified.f
  ${DL_MODELS}/igrf12/sig_file_patched.pyf
)
target_compile_options(igrf12py PRIVATE -std=legacy)
target_include_directories(igrf12py PRIVATE ${NUMPY_INCLUDE_DIRS})

# HWM 93
Python_add_library(hwm93py MODULE
  ${DL_MODELS}/hwm93/hwm93_modified.f
  ${DL_MODELS}/hwm93/sig_file_patched.pyf
)
target_compile_options(hwm93py PRIVATE -std=legacy)
target_include_directories(hwm93py PRIVATE ${NUMPY_INCLUDE_DIRS})

# HWM 07
Python_add_library(hwm07py MODULE
  ${DL_MODELS}/hwm07/hwm07e_modified.f90
  ${DL_MODELS}/hwm07/apexcord.f90
  ${DL_MODELS}/hwm07/sig_file.pyf
)
target_compile_options(hwm07py PRIVATE -std=legacy)
target_include_directories(hwm07py PRIVATE ${NUMPY_INCLUDE_DIRS})

# HWM 14
Python_add_library(hwm14py MODULE
  ${DL_MODELS}/hwm14/hwm14.f90
  ${DL_MODELS}/hwm14/sig_file.pyf
)
target_compile_options(hwm14py PRIVATE -std=legacy)
target_include_directories(hwm14py PRIVATE ${NUMPY_INCLUDE_DIRS})

# IRI 12
Python_add_library(iri12py STATIC
  ${DL_MODELS}/iri12/cira.for
  ${DL_MODELS}/iri12/igrf.for
  ${DL_MODELS}/iri12/iridreg_modified.for
  ${DL_MODELS}/iri12/irifun.for
  ${DL_MODELS}/iri12/irisub.for
  ${DL_MODELS}/iri12/iritec.for
  ${DL_MODELS}/iri12/iriflip.for
  ${DL_MODELS}/iri12/sig_file_patched.pyf
)
target_compile_options(iri12py PRIVATE -std=legacy -w -O2 -fbacktrace -fno-automatic -fPIC)
target_include_directories(iri12py PRIVATE ${NUMPY_INCLUDE_DIRS})

# IRI 16
Python_add_library(iri16py STATIC
  ${DL_MODELS}/iri16/cira.for
  ${DL_MODELS}/iri16/igrf.for
  ${DL_MODELS}/iri16/iridreg_modified.for
  ${DL_MODELS}/iri16/irifun.for
  ${DL_MODELS}/iri16/irisub.for
  ${DL_MODELS}/iri16/iritec.for
  ${DL_MODELS}/iri16/iriflip_modified.for
  ${DL_MODELS}/iri16/cosd_sind.for
  ${DL_MODELS}/iri16/sig_file_patched.pyf
)
target_compile_options(iri16py PRIVATE -std=legacy -w -O2 -fbacktrace -fno-automatic -fPIC)
target_include_directories(iri16py PRIVATE ${NUMPY_INCLUDE_DIRS})


# IRI 20
Python_add_library(iri20py STATIC
  ${DL_MODELS}/iri20/cira.for
  ${DL_MODELS}/iri20/igrf.for
  ${DL_MODELS}/iri20/iridreg_modified.for
  ${DL_MODELS}/iri20/irifun.for
  ${DL_MODELS}/iri20/irisub.for
  ${DL_MODELS}/iri20/iritec.for
  ${DL_MODELS}/iri20/iriflip_modified.for
  ${DL_MODELS}/iri20/cosd_sind.for
  ${DL_MODELS}/iri20/rocdrift.for
  ${DL_MODELS}/iri20/sig_file_patched.pyf
)
target_compile_options(iri20py PRIVATE -std=legacy -w -O2 -fbacktrace -fno-automatic -fPIC)
target_include_directories(iri20py PRIVATE ${NUMPY_INCLUDE_DIRS})

# MSIS 00
Python_add_library(msis00py MODULE
  ${DL_MODELS}/msis/nrlmsise00_sub_patched.for
  ${DL_MODELS}/msis/sig_file_patched.pyf
)
target_compile_options(msis00py PRIVATE -std=legacy)
target_include_directories(msis00py PRIVATE ${NUMPY_INCLUDE_DIRS})


install(TARGETS igrf11py igrf12py hwm93py hwm07py hwm14py iri12py iri16py iri20py msis00py LIBRARY DESTINATION ./)


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