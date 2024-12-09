cmake_minimum_required(VERSION 3.10)

# Project Name
project(pyglow LANGUAGES Fortran)

# Set the directories for the model files
set(DL_MODELS "src/pyglow/models/dl_models")

# List of source files for each model
set(IGRF11_SOURCES
    ${DL_MODELS}/igrf11/igrf11_modified.f
    ${DL_MODELS}/igrf11/sig_file_patched.pyf
)

set(IGRF12_SOURCES
    ${DL_MODELS}/igrf12/igrf12_modified.f
    ${DL_MODELS}/igrf12/sig_file_patched.pyf
)

set(HWM93_SOURCES
    ${DL_MODELS}/hwm93/hwm93_modified.f
    ${DL_MODELS}/hwm93/sig_file_patched.pyf
)

set(HWM07_SOURCES
    ${DL_MODELS}/hwm07/hwm07e_modified.f90
    ${DL_MODELS}/hwm07/apexcord.f90
    ${DL_MODELS}/hwm07/sig_file.pyf
)

set(HWM14_SOURCES
    ${DL_MODELS}/hwm14/hwm14.f90
    ${DL_MODELS}/hwm14/sig_file.pyf
)

set(IRI12_SOURCES
    ${DL_MODELS}/iri12/cira.for
    ${DL_MODELS}/iri12/igrf.for
    ${DL_MODELS}/iri12/iridreg_modified.for
    ${DL_MODELS}/iri12/irifun.for
    ${DL_MODELS}/iri12/irisub.for
    ${DL_MODELS}/iri12/iritec.for
    ${DL_MODELS}/iri12/iriflip.for
    ${DL_MODELS}/iri12/sig_file_patched.pyf
)

set(IRI16_SOURCES
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

set(MSIS00_SOURCES
    ${DL_MODELS}/msis/nrlmsise00_sub_patched.for
    ${DL_MODELS}/msis/sig_file_patched.pyf
)

# Add the executable for each model
add_library(igrf11py MODULE ${IGRF11_SOURCES})
add_library(igrf12py MODULE ${IGRF12_SOURCES})
add_library(hwm93py MODULE ${HWM93_SOURCES})
add_library(hwm07py MODULE ${HWM07_SOURCES})
add_library(hwm14py MODULE ${HWM14_SOURCES})
add_library(iri12py MODULE ${IRI12_SOURCES})
add_library(iri16py MODULE ${IRI16_SOURCES})
add_library(msis00py MODULE ${MSIS00_SOURCES})

# Set compile options
target_compile_options(igrf11py PRIVATE -std=legacy)
target_compile_options(igrf12py PRIVATE -std=legacy)
target_compile_options(hwm93py PRIVATE -std=legacy)
target_compile_options(hwm14py PRIVATE -std=legacy)
target_compile_options(iri12py PRIVATE -std=legacy -w -O2 -fbacktrace -fno-automatic -fPIC)
target_compile_options(iri16py PRIVATE -std=legacy -w -O2 -fbacktrace -fno-automatic -fPIC)
target_compile_options(msis00py PRIVATE -std=legacy)