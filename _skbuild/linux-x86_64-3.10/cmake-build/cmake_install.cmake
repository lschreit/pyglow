# Install script for directory: /home/schreit/pyglow

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-install/src/pyglow")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf11py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf11py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf11py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/igrf11py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf11py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf11py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf11py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf12py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf12py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf12py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/igrf12py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf12py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf12py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/igrf12py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm93py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm93py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm93py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/hwm93py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm93py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm93py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm93py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm07py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm07py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm07py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/hwm07py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm07py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm07py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm07py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm14py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm14py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm14py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/hwm14py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm14py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm14py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/hwm14py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri12py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri12py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri12py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/iri12py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri12py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri12py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri12py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri16py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri16py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri16py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/iri16py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri16py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri16py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri16py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri20py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri20py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri20py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/iri20py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri20py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri20py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/iri20py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/msis00py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/msis00py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/msis00py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pyglow" TYPE MODULE FILES "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/msis00py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/msis00py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/msis00py.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pyglow/msis00py.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/hwm07_data" TYPE FILE FILES
    "/home/schreit/pyglow/src/pyglow/models/dl_models/hwm07/apexgrid.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/hwm07/dwm07b_104i.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/hwm07/hwm071308e.dat"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/hwm14_data" TYPE FILE FILES
    "/home/schreit/pyglow/src/pyglow/models/dl_models/hwm14/gd2qd.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/hwm14/dwm07b104i.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/hwm14/hwm123114.bin"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/iri12_data" TYPE FILE FILES
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/apf107.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir11.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir12.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir13.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir14.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir15.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir16.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir17.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir18.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir19.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir20.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir21.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ccir22.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1945.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1950.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1955.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1960.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1965.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1970.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1975.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1980.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1985.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1990.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf1995.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf2000.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/dgrf2005.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ig_rz_IPS.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ig_rz_SEC.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ig_rz.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/igrf2010.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/igrf2010s.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi11.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi12.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi13.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi14.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi15.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi16.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi17.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi18.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi19.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi20.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi21.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri12/ursi22.asc"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/iri16_data" TYPE FILE FILES
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/apf107.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir11.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir12.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir13.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir14.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir15.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir16.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir17.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir18.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir19.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir20.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir21.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ccir22.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1945.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1950.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1955.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1960.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1965.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1970.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1975.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1980.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1985.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1990.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf1995.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf2000.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf2005.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf2010.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/dgrf2015.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ig_rz.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/igrf2020.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/igrf2020s.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat11.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat12.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat13.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat14.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat15.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat16.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat17.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat18.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat19.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat20.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat21.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/mcsat22.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi11.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi12.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi13.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi14.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi15.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi16.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi17.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi18.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi19.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi20.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi21.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri16/ursi22.asc"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/iri20_data" TYPE FILE FILES
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/apf107.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir11.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir12.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir13.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir14.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir15.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir16.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir17.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir18.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir19.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir20.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir21.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ccir22.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1945.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1950.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1955.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1960.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1965.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1970.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1975.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1980.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1985.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1990.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf1995.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf2000.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf2005.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf2010.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/dgrf2015.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ig_rz.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/igrf2020.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/igrf2020s.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat11.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat12.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat13.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat14.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat15.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat16.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat17.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat18.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat19.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat20.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat21.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/mcsat22.dat"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi11.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi12.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi13.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi14.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi15.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi16.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi17.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi18.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi19.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi20.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi21.asc"
    "/home/schreit/pyglow/src/pyglow/models/dl_models/iri20/ursi22.asc"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/kpap" TYPE FILE FILES "/home/schreit/pyglow/src/pyglow/kpap/Kp_ap_Ap_SN_F107_since_1932.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/dst" TYPE FILE FILES
    "/home/schreit/pyglow/src/pyglow/dst/1957_1969"
    "/home/schreit/pyglow/src/pyglow/dst/1970_1989"
    "/home/schreit/pyglow/src/pyglow/dst/1990_2004"
    "/home/schreit/pyglow/src/pyglow/dst/200001"
    "/home/schreit/pyglow/src/pyglow/dst/200002"
    "/home/schreit/pyglow/src/pyglow/dst/200003"
    "/home/schreit/pyglow/src/pyglow/dst/200004"
    "/home/schreit/pyglow/src/pyglow/dst/200005"
    "/home/schreit/pyglow/src/pyglow/dst/200006"
    "/home/schreit/pyglow/src/pyglow/dst/200007"
    "/home/schreit/pyglow/src/pyglow/dst/200008"
    "/home/schreit/pyglow/src/pyglow/dst/200009"
    "/home/schreit/pyglow/src/pyglow/dst/200010"
    "/home/schreit/pyglow/src/pyglow/dst/200011"
    "/home/schreit/pyglow/src/pyglow/dst/200012"
    "/home/schreit/pyglow/src/pyglow/dst/200501"
    "/home/schreit/pyglow/src/pyglow/dst/200502"
    "/home/schreit/pyglow/src/pyglow/dst/200503"
    "/home/schreit/pyglow/src/pyglow/dst/200504"
    "/home/schreit/pyglow/src/pyglow/dst/200505"
    "/home/schreit/pyglow/src/pyglow/dst/200506"
    "/home/schreit/pyglow/src/pyglow/dst/200507"
    "/home/schreit/pyglow/src/pyglow/dst/200508"
    "/home/schreit/pyglow/src/pyglow/dst/200509"
    "/home/schreit/pyglow/src/pyglow/dst/200510"
    "/home/schreit/pyglow/src/pyglow/dst/200511"
    "/home/schreit/pyglow/src/pyglow/dst/200512"
    "/home/schreit/pyglow/src/pyglow/dst/200601"
    "/home/schreit/pyglow/src/pyglow/dst/200602"
    "/home/schreit/pyglow/src/pyglow/dst/200603"
    "/home/schreit/pyglow/src/pyglow/dst/200604"
    "/home/schreit/pyglow/src/pyglow/dst/200605"
    "/home/schreit/pyglow/src/pyglow/dst/200606"
    "/home/schreit/pyglow/src/pyglow/dst/200607"
    "/home/schreit/pyglow/src/pyglow/dst/200608"
    "/home/schreit/pyglow/src/pyglow/dst/200609"
    "/home/schreit/pyglow/src/pyglow/dst/200610"
    "/home/schreit/pyglow/src/pyglow/dst/200611"
    "/home/schreit/pyglow/src/pyglow/dst/200612"
    "/home/schreit/pyglow/src/pyglow/dst/200701"
    "/home/schreit/pyglow/src/pyglow/dst/200702"
    "/home/schreit/pyglow/src/pyglow/dst/200703"
    "/home/schreit/pyglow/src/pyglow/dst/200704"
    "/home/schreit/pyglow/src/pyglow/dst/200705"
    "/home/schreit/pyglow/src/pyglow/dst/200706"
    "/home/schreit/pyglow/src/pyglow/dst/200707"
    "/home/schreit/pyglow/src/pyglow/dst/200708"
    "/home/schreit/pyglow/src/pyglow/dst/200709"
    "/home/schreit/pyglow/src/pyglow/dst/200710"
    "/home/schreit/pyglow/src/pyglow/dst/200711"
    "/home/schreit/pyglow/src/pyglow/dst/200712"
    "/home/schreit/pyglow/src/pyglow/dst/200801"
    "/home/schreit/pyglow/src/pyglow/dst/200802"
    "/home/schreit/pyglow/src/pyglow/dst/200803"
    "/home/schreit/pyglow/src/pyglow/dst/200804"
    "/home/schreit/pyglow/src/pyglow/dst/200805"
    "/home/schreit/pyglow/src/pyglow/dst/200806"
    "/home/schreit/pyglow/src/pyglow/dst/200807"
    "/home/schreit/pyglow/src/pyglow/dst/200808"
    "/home/schreit/pyglow/src/pyglow/dst/200809"
    "/home/schreit/pyglow/src/pyglow/dst/200810"
    "/home/schreit/pyglow/src/pyglow/dst/200811"
    "/home/schreit/pyglow/src/pyglow/dst/200812"
    "/home/schreit/pyglow/src/pyglow/dst/200901"
    "/home/schreit/pyglow/src/pyglow/dst/200902"
    "/home/schreit/pyglow/src/pyglow/dst/200903"
    "/home/schreit/pyglow/src/pyglow/dst/200904"
    "/home/schreit/pyglow/src/pyglow/dst/200905"
    "/home/schreit/pyglow/src/pyglow/dst/200906"
    "/home/schreit/pyglow/src/pyglow/dst/200907"
    "/home/schreit/pyglow/src/pyglow/dst/200908"
    "/home/schreit/pyglow/src/pyglow/dst/200909"
    "/home/schreit/pyglow/src/pyglow/dst/200910"
    "/home/schreit/pyglow/src/pyglow/dst/200911"
    "/home/schreit/pyglow/src/pyglow/dst/200912"
    "/home/schreit/pyglow/src/pyglow/dst/201001"
    "/home/schreit/pyglow/src/pyglow/dst/201002"
    "/home/schreit/pyglow/src/pyglow/dst/201003"
    "/home/schreit/pyglow/src/pyglow/dst/201004"
    "/home/schreit/pyglow/src/pyglow/dst/201005"
    "/home/schreit/pyglow/src/pyglow/dst/201006"
    "/home/schreit/pyglow/src/pyglow/dst/201007"
    "/home/schreit/pyglow/src/pyglow/dst/201008"
    "/home/schreit/pyglow/src/pyglow/dst/201009"
    "/home/schreit/pyglow/src/pyglow/dst/201010"
    "/home/schreit/pyglow/src/pyglow/dst/201011"
    "/home/schreit/pyglow/src/pyglow/dst/201012"
    "/home/schreit/pyglow/src/pyglow/dst/201101"
    "/home/schreit/pyglow/src/pyglow/dst/201102"
    "/home/schreit/pyglow/src/pyglow/dst/201103"
    "/home/schreit/pyglow/src/pyglow/dst/201104"
    "/home/schreit/pyglow/src/pyglow/dst/201105"
    "/home/schreit/pyglow/src/pyglow/dst/201106"
    "/home/schreit/pyglow/src/pyglow/dst/201107"
    "/home/schreit/pyglow/src/pyglow/dst/201108"
    "/home/schreit/pyglow/src/pyglow/dst/201109"
    "/home/schreit/pyglow/src/pyglow/dst/201110"
    "/home/schreit/pyglow/src/pyglow/dst/201111"
    "/home/schreit/pyglow/src/pyglow/dst/201112"
    "/home/schreit/pyglow/src/pyglow/dst/201201"
    "/home/schreit/pyglow/src/pyglow/dst/201202"
    "/home/schreit/pyglow/src/pyglow/dst/201203"
    "/home/schreit/pyglow/src/pyglow/dst/201204"
    "/home/schreit/pyglow/src/pyglow/dst/201205"
    "/home/schreit/pyglow/src/pyglow/dst/201206"
    "/home/schreit/pyglow/src/pyglow/dst/201207"
    "/home/schreit/pyglow/src/pyglow/dst/201208"
    "/home/schreit/pyglow/src/pyglow/dst/201209"
    "/home/schreit/pyglow/src/pyglow/dst/201210"
    "/home/schreit/pyglow/src/pyglow/dst/201211"
    "/home/schreit/pyglow/src/pyglow/dst/201212"
    "/home/schreit/pyglow/src/pyglow/dst/201301"
    "/home/schreit/pyglow/src/pyglow/dst/201302"
    "/home/schreit/pyglow/src/pyglow/dst/201303"
    "/home/schreit/pyglow/src/pyglow/dst/201304"
    "/home/schreit/pyglow/src/pyglow/dst/201305"
    "/home/schreit/pyglow/src/pyglow/dst/201306"
    "/home/schreit/pyglow/src/pyglow/dst/201307"
    "/home/schreit/pyglow/src/pyglow/dst/201308"
    "/home/schreit/pyglow/src/pyglow/dst/201309"
    "/home/schreit/pyglow/src/pyglow/dst/201310"
    "/home/schreit/pyglow/src/pyglow/dst/201311"
    "/home/schreit/pyglow/src/pyglow/dst/201312"
    "/home/schreit/pyglow/src/pyglow/dst/201401"
    "/home/schreit/pyglow/src/pyglow/dst/201402"
    "/home/schreit/pyglow/src/pyglow/dst/201403"
    "/home/schreit/pyglow/src/pyglow/dst/201404"
    "/home/schreit/pyglow/src/pyglow/dst/201405"
    "/home/schreit/pyglow/src/pyglow/dst/201406"
    "/home/schreit/pyglow/src/pyglow/dst/201407"
    "/home/schreit/pyglow/src/pyglow/dst/201408"
    "/home/schreit/pyglow/src/pyglow/dst/201409"
    "/home/schreit/pyglow/src/pyglow/dst/201410"
    "/home/schreit/pyglow/src/pyglow/dst/201411"
    "/home/schreit/pyglow/src/pyglow/dst/201412"
    "/home/schreit/pyglow/src/pyglow/dst/201501"
    "/home/schreit/pyglow/src/pyglow/dst/201502"
    "/home/schreit/pyglow/src/pyglow/dst/201503"
    "/home/schreit/pyglow/src/pyglow/dst/201504"
    "/home/schreit/pyglow/src/pyglow/dst/201505"
    "/home/schreit/pyglow/src/pyglow/dst/201506"
    "/home/schreit/pyglow/src/pyglow/dst/201507"
    "/home/schreit/pyglow/src/pyglow/dst/201508"
    "/home/schreit/pyglow/src/pyglow/dst/201509"
    "/home/schreit/pyglow/src/pyglow/dst/201510"
    "/home/schreit/pyglow/src/pyglow/dst/201511"
    "/home/schreit/pyglow/src/pyglow/dst/201512"
    "/home/schreit/pyglow/src/pyglow/dst/201601"
    "/home/schreit/pyglow/src/pyglow/dst/201602"
    "/home/schreit/pyglow/src/pyglow/dst/201603"
    "/home/schreit/pyglow/src/pyglow/dst/201604"
    "/home/schreit/pyglow/src/pyglow/dst/201605"
    "/home/schreit/pyglow/src/pyglow/dst/201606"
    "/home/schreit/pyglow/src/pyglow/dst/201607"
    "/home/schreit/pyglow/src/pyglow/dst/201608"
    "/home/schreit/pyglow/src/pyglow/dst/201609"
    "/home/schreit/pyglow/src/pyglow/dst/201610"
    "/home/schreit/pyglow/src/pyglow/dst/201611"
    "/home/schreit/pyglow/src/pyglow/dst/201612"
    "/home/schreit/pyglow/src/pyglow/dst/201701"
    "/home/schreit/pyglow/src/pyglow/dst/201702"
    "/home/schreit/pyglow/src/pyglow/dst/201703"
    "/home/schreit/pyglow/src/pyglow/dst/201704"
    "/home/schreit/pyglow/src/pyglow/dst/201705"
    "/home/schreit/pyglow/src/pyglow/dst/201706"
    "/home/schreit/pyglow/src/pyglow/dst/201707"
    "/home/schreit/pyglow/src/pyglow/dst/201708"
    "/home/schreit/pyglow/src/pyglow/dst/201709"
    "/home/schreit/pyglow/src/pyglow/dst/201710"
    "/home/schreit/pyglow/src/pyglow/dst/201711"
    "/home/schreit/pyglow/src/pyglow/dst/201712"
    "/home/schreit/pyglow/src/pyglow/dst/201801"
    "/home/schreit/pyglow/src/pyglow/dst/201802"
    "/home/schreit/pyglow/src/pyglow/dst/201803"
    "/home/schreit/pyglow/src/pyglow/dst/201804"
    "/home/schreit/pyglow/src/pyglow/dst/201805"
    "/home/schreit/pyglow/src/pyglow/dst/201806"
    "/home/schreit/pyglow/src/pyglow/dst/201807"
    "/home/schreit/pyglow/src/pyglow/dst/201808"
    "/home/schreit/pyglow/src/pyglow/dst/201809"
    "/home/schreit/pyglow/src/pyglow/dst/201810"
    "/home/schreit/pyglow/src/pyglow/dst/201811"
    "/home/schreit/pyglow/src/pyglow/dst/201812"
    "/home/schreit/pyglow/src/pyglow/dst/201901"
    "/home/schreit/pyglow/src/pyglow/dst/201902"
    "/home/schreit/pyglow/src/pyglow/dst/201903"
    "/home/schreit/pyglow/src/pyglow/dst/201904"
    "/home/schreit/pyglow/src/pyglow/dst/201905"
    "/home/schreit/pyglow/src/pyglow/dst/201906"
    "/home/schreit/pyglow/src/pyglow/dst/201907"
    "/home/schreit/pyglow/src/pyglow/dst/201908"
    "/home/schreit/pyglow/src/pyglow/dst/201909"
    "/home/schreit/pyglow/src/pyglow/dst/201910"
    "/home/schreit/pyglow/src/pyglow/dst/201911"
    "/home/schreit/pyglow/src/pyglow/dst/201912"
    "/home/schreit/pyglow/src/pyglow/dst/202001"
    "/home/schreit/pyglow/src/pyglow/dst/202002"
    "/home/schreit/pyglow/src/pyglow/dst/202003"
    "/home/schreit/pyglow/src/pyglow/dst/202004"
    "/home/schreit/pyglow/src/pyglow/dst/202005"
    "/home/schreit/pyglow/src/pyglow/dst/202006"
    "/home/schreit/pyglow/src/pyglow/dst/202007"
    "/home/schreit/pyglow/src/pyglow/dst/202008"
    "/home/schreit/pyglow/src/pyglow/dst/202009"
    "/home/schreit/pyglow/src/pyglow/dst/202010"
    "/home/schreit/pyglow/src/pyglow/dst/202011"
    "/home/schreit/pyglow/src/pyglow/dst/202012"
    "/home/schreit/pyglow/src/pyglow/dst/202101"
    "/home/schreit/pyglow/src/pyglow/dst/202102"
    "/home/schreit/pyglow/src/pyglow/dst/202103"
    "/home/schreit/pyglow/src/pyglow/dst/202104"
    "/home/schreit/pyglow/src/pyglow/dst/202105"
    "/home/schreit/pyglow/src/pyglow/dst/202106"
    "/home/schreit/pyglow/src/pyglow/dst/202107"
    "/home/schreit/pyglow/src/pyglow/dst/202108"
    "/home/schreit/pyglow/src/pyglow/dst/202109"
    "/home/schreit/pyglow/src/pyglow/dst/202110"
    "/home/schreit/pyglow/src/pyglow/dst/202111"
    "/home/schreit/pyglow/src/pyglow/dst/202112"
    "/home/schreit/pyglow/src/pyglow/dst/202201"
    "/home/schreit/pyglow/src/pyglow/dst/202202"
    "/home/schreit/pyglow/src/pyglow/dst/202203"
    "/home/schreit/pyglow/src/pyglow/dst/202204"
    "/home/schreit/pyglow/src/pyglow/dst/202205"
    "/home/schreit/pyglow/src/pyglow/dst/202206"
    "/home/schreit/pyglow/src/pyglow/dst/202207"
    "/home/schreit/pyglow/src/pyglow/dst/202208"
    "/home/schreit/pyglow/src/pyglow/dst/202209"
    "/home/schreit/pyglow/src/pyglow/dst/202210"
    "/home/schreit/pyglow/src/pyglow/dst/202211"
    "/home/schreit/pyglow/src/pyglow/dst/202212"
    "/home/schreit/pyglow/src/pyglow/dst/202301"
    "/home/schreit/pyglow/src/pyglow/dst/202302"
    "/home/schreit/pyglow/src/pyglow/dst/202303"
    "/home/schreit/pyglow/src/pyglow/dst/202304"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/ae" TYPE FILE FILES
    "/home/schreit/pyglow/src/pyglow/ae/1975"
    "/home/schreit/pyglow/src/pyglow/ae/1978"
    "/home/schreit/pyglow/src/pyglow/ae/1979"
    "/home/schreit/pyglow/src/pyglow/ae/1980"
    "/home/schreit/pyglow/src/pyglow/ae/1981"
    "/home/schreit/pyglow/src/pyglow/ae/1982"
    "/home/schreit/pyglow/src/pyglow/ae/1983"
    "/home/schreit/pyglow/src/pyglow/ae/1984"
    "/home/schreit/pyglow/src/pyglow/ae/1985"
    "/home/schreit/pyglow/src/pyglow/ae/1986"
    "/home/schreit/pyglow/src/pyglow/ae/1987"
    "/home/schreit/pyglow/src/pyglow/ae/1988"
    "/home/schreit/pyglow/src/pyglow/ae/1989"
    "/home/schreit/pyglow/src/pyglow/ae/1990"
    "/home/schreit/pyglow/src/pyglow/ae/1991"
    "/home/schreit/pyglow/src/pyglow/ae/1992"
    "/home/schreit/pyglow/src/pyglow/ae/1993"
    "/home/schreit/pyglow/src/pyglow/ae/1994"
    "/home/schreit/pyglow/src/pyglow/ae/1995"
    "/home/schreit/pyglow/src/pyglow/ae/1996"
    "/home/schreit/pyglow/src/pyglow/ae/1997"
    "/home/schreit/pyglow/src/pyglow/ae/1998"
    "/home/schreit/pyglow/src/pyglow/ae/1999"
    "/home/schreit/pyglow/src/pyglow/ae/200001"
    "/home/schreit/pyglow/src/pyglow/ae/200002"
    "/home/schreit/pyglow/src/pyglow/ae/200003"
    "/home/schreit/pyglow/src/pyglow/ae/200004"
    "/home/schreit/pyglow/src/pyglow/ae/200005"
    "/home/schreit/pyglow/src/pyglow/ae/200006"
    "/home/schreit/pyglow/src/pyglow/ae/200007"
    "/home/schreit/pyglow/src/pyglow/ae/200008"
    "/home/schreit/pyglow/src/pyglow/ae/200009"
    "/home/schreit/pyglow/src/pyglow/ae/200010"
    "/home/schreit/pyglow/src/pyglow/ae/200011"
    "/home/schreit/pyglow/src/pyglow/ae/200012"
    "/home/schreit/pyglow/src/pyglow/ae/200101"
    "/home/schreit/pyglow/src/pyglow/ae/200102"
    "/home/schreit/pyglow/src/pyglow/ae/200103"
    "/home/schreit/pyglow/src/pyglow/ae/200104"
    "/home/schreit/pyglow/src/pyglow/ae/200105"
    "/home/schreit/pyglow/src/pyglow/ae/200106"
    "/home/schreit/pyglow/src/pyglow/ae/200107"
    "/home/schreit/pyglow/src/pyglow/ae/200108"
    "/home/schreit/pyglow/src/pyglow/ae/200109"
    "/home/schreit/pyglow/src/pyglow/ae/200110"
    "/home/schreit/pyglow/src/pyglow/ae/200111"
    "/home/schreit/pyglow/src/pyglow/ae/200112"
    "/home/schreit/pyglow/src/pyglow/ae/200201"
    "/home/schreit/pyglow/src/pyglow/ae/200202"
    "/home/schreit/pyglow/src/pyglow/ae/200203"
    "/home/schreit/pyglow/src/pyglow/ae/200204"
    "/home/schreit/pyglow/src/pyglow/ae/200205"
    "/home/schreit/pyglow/src/pyglow/ae/200206"
    "/home/schreit/pyglow/src/pyglow/ae/200207"
    "/home/schreit/pyglow/src/pyglow/ae/200208"
    "/home/schreit/pyglow/src/pyglow/ae/200209"
    "/home/schreit/pyglow/src/pyglow/ae/200210"
    "/home/schreit/pyglow/src/pyglow/ae/200211"
    "/home/schreit/pyglow/src/pyglow/ae/200212"
    "/home/schreit/pyglow/src/pyglow/ae/200301"
    "/home/schreit/pyglow/src/pyglow/ae/200302"
    "/home/schreit/pyglow/src/pyglow/ae/200303"
    "/home/schreit/pyglow/src/pyglow/ae/200304"
    "/home/schreit/pyglow/src/pyglow/ae/200305"
    "/home/schreit/pyglow/src/pyglow/ae/200306"
    "/home/schreit/pyglow/src/pyglow/ae/200307"
    "/home/schreit/pyglow/src/pyglow/ae/200308"
    "/home/schreit/pyglow/src/pyglow/ae/200309"
    "/home/schreit/pyglow/src/pyglow/ae/200310"
    "/home/schreit/pyglow/src/pyglow/ae/200311"
    "/home/schreit/pyglow/src/pyglow/ae/200312"
    "/home/schreit/pyglow/src/pyglow/ae/200401"
    "/home/schreit/pyglow/src/pyglow/ae/200402"
    "/home/schreit/pyglow/src/pyglow/ae/200403"
    "/home/schreit/pyglow/src/pyglow/ae/200404"
    "/home/schreit/pyglow/src/pyglow/ae/200405"
    "/home/schreit/pyglow/src/pyglow/ae/200406"
    "/home/schreit/pyglow/src/pyglow/ae/200407"
    "/home/schreit/pyglow/src/pyglow/ae/200408"
    "/home/schreit/pyglow/src/pyglow/ae/200409"
    "/home/schreit/pyglow/src/pyglow/ae/200410"
    "/home/schreit/pyglow/src/pyglow/ae/200411"
    "/home/schreit/pyglow/src/pyglow/ae/200412"
    "/home/schreit/pyglow/src/pyglow/ae/200501"
    "/home/schreit/pyglow/src/pyglow/ae/200502"
    "/home/schreit/pyglow/src/pyglow/ae/200503"
    "/home/schreit/pyglow/src/pyglow/ae/200504"
    "/home/schreit/pyglow/src/pyglow/ae/200505"
    "/home/schreit/pyglow/src/pyglow/ae/200506"
    "/home/schreit/pyglow/src/pyglow/ae/200507"
    "/home/schreit/pyglow/src/pyglow/ae/200508"
    "/home/schreit/pyglow/src/pyglow/ae/200509"
    "/home/schreit/pyglow/src/pyglow/ae/200510"
    "/home/schreit/pyglow/src/pyglow/ae/200511"
    "/home/schreit/pyglow/src/pyglow/ae/200512"
    "/home/schreit/pyglow/src/pyglow/ae/200601"
    "/home/schreit/pyglow/src/pyglow/ae/200602"
    "/home/schreit/pyglow/src/pyglow/ae/200603"
    "/home/schreit/pyglow/src/pyglow/ae/200604"
    "/home/schreit/pyglow/src/pyglow/ae/200605"
    "/home/schreit/pyglow/src/pyglow/ae/200606"
    "/home/schreit/pyglow/src/pyglow/ae/200607"
    "/home/schreit/pyglow/src/pyglow/ae/200608"
    "/home/schreit/pyglow/src/pyglow/ae/200609"
    "/home/schreit/pyglow/src/pyglow/ae/200610"
    "/home/schreit/pyglow/src/pyglow/ae/200611"
    "/home/schreit/pyglow/src/pyglow/ae/200612"
    "/home/schreit/pyglow/src/pyglow/ae/200701"
    "/home/schreit/pyglow/src/pyglow/ae/200702"
    "/home/schreit/pyglow/src/pyglow/ae/200703"
    "/home/schreit/pyglow/src/pyglow/ae/200704"
    "/home/schreit/pyglow/src/pyglow/ae/200705"
    "/home/schreit/pyglow/src/pyglow/ae/200706"
    "/home/schreit/pyglow/src/pyglow/ae/200707"
    "/home/schreit/pyglow/src/pyglow/ae/200708"
    "/home/schreit/pyglow/src/pyglow/ae/200709"
    "/home/schreit/pyglow/src/pyglow/ae/200710"
    "/home/schreit/pyglow/src/pyglow/ae/200711"
    "/home/schreit/pyglow/src/pyglow/ae/200712"
    "/home/schreit/pyglow/src/pyglow/ae/200801"
    "/home/schreit/pyglow/src/pyglow/ae/200802"
    "/home/schreit/pyglow/src/pyglow/ae/200803"
    "/home/schreit/pyglow/src/pyglow/ae/200804"
    "/home/schreit/pyglow/src/pyglow/ae/200805"
    "/home/schreit/pyglow/src/pyglow/ae/200806"
    "/home/schreit/pyglow/src/pyglow/ae/200807"
    "/home/schreit/pyglow/src/pyglow/ae/200808"
    "/home/schreit/pyglow/src/pyglow/ae/200809"
    "/home/schreit/pyglow/src/pyglow/ae/200810"
    "/home/schreit/pyglow/src/pyglow/ae/200811"
    "/home/schreit/pyglow/src/pyglow/ae/200812"
    "/home/schreit/pyglow/src/pyglow/ae/200901"
    "/home/schreit/pyglow/src/pyglow/ae/200902"
    "/home/schreit/pyglow/src/pyglow/ae/200903"
    "/home/schreit/pyglow/src/pyglow/ae/200904"
    "/home/schreit/pyglow/src/pyglow/ae/200905"
    "/home/schreit/pyglow/src/pyglow/ae/200906"
    "/home/schreit/pyglow/src/pyglow/ae/200907"
    "/home/schreit/pyglow/src/pyglow/ae/200908"
    "/home/schreit/pyglow/src/pyglow/ae/200909"
    "/home/schreit/pyglow/src/pyglow/ae/200910"
    "/home/schreit/pyglow/src/pyglow/ae/200911"
    "/home/schreit/pyglow/src/pyglow/ae/200912"
    "/home/schreit/pyglow/src/pyglow/ae/201001"
    "/home/schreit/pyglow/src/pyglow/ae/201002"
    "/home/schreit/pyglow/src/pyglow/ae/201003"
    "/home/schreit/pyglow/src/pyglow/ae/201004"
    "/home/schreit/pyglow/src/pyglow/ae/201005"
    "/home/schreit/pyglow/src/pyglow/ae/201006"
    "/home/schreit/pyglow/src/pyglow/ae/201007"
    "/home/schreit/pyglow/src/pyglow/ae/201008"
    "/home/schreit/pyglow/src/pyglow/ae/201009"
    "/home/schreit/pyglow/src/pyglow/ae/201010"
    "/home/schreit/pyglow/src/pyglow/ae/201011"
    "/home/schreit/pyglow/src/pyglow/ae/201012"
    "/home/schreit/pyglow/src/pyglow/ae/201101"
    "/home/schreit/pyglow/src/pyglow/ae/201102"
    "/home/schreit/pyglow/src/pyglow/ae/201103"
    "/home/schreit/pyglow/src/pyglow/ae/201104"
    "/home/schreit/pyglow/src/pyglow/ae/201105"
    "/home/schreit/pyglow/src/pyglow/ae/201106"
    "/home/schreit/pyglow/src/pyglow/ae/201107"
    "/home/schreit/pyglow/src/pyglow/ae/201108"
    "/home/schreit/pyglow/src/pyglow/ae/201109"
    "/home/schreit/pyglow/src/pyglow/ae/201110"
    "/home/schreit/pyglow/src/pyglow/ae/201111"
    "/home/schreit/pyglow/src/pyglow/ae/201112"
    "/home/schreit/pyglow/src/pyglow/ae/201201"
    "/home/schreit/pyglow/src/pyglow/ae/201202"
    "/home/schreit/pyglow/src/pyglow/ae/201203"
    "/home/schreit/pyglow/src/pyglow/ae/201204"
    "/home/schreit/pyglow/src/pyglow/ae/201205"
    "/home/schreit/pyglow/src/pyglow/ae/201206"
    "/home/schreit/pyglow/src/pyglow/ae/201207"
    "/home/schreit/pyglow/src/pyglow/ae/201208"
    "/home/schreit/pyglow/src/pyglow/ae/201209"
    "/home/schreit/pyglow/src/pyglow/ae/201210"
    "/home/schreit/pyglow/src/pyglow/ae/201211"
    "/home/schreit/pyglow/src/pyglow/ae/201212"
    "/home/schreit/pyglow/src/pyglow/ae/201301"
    "/home/schreit/pyglow/src/pyglow/ae/201302"
    "/home/schreit/pyglow/src/pyglow/ae/201303"
    "/home/schreit/pyglow/src/pyglow/ae/201304"
    "/home/schreit/pyglow/src/pyglow/ae/201305"
    "/home/schreit/pyglow/src/pyglow/ae/201306"
    "/home/schreit/pyglow/src/pyglow/ae/201307"
    "/home/schreit/pyglow/src/pyglow/ae/201308"
    "/home/schreit/pyglow/src/pyglow/ae/201309"
    "/home/schreit/pyglow/src/pyglow/ae/201310"
    "/home/schreit/pyglow/src/pyglow/ae/201311"
    "/home/schreit/pyglow/src/pyglow/ae/201312"
    "/home/schreit/pyglow/src/pyglow/ae/201401"
    "/home/schreit/pyglow/src/pyglow/ae/201402"
    "/home/schreit/pyglow/src/pyglow/ae/201403"
    "/home/schreit/pyglow/src/pyglow/ae/201404"
    "/home/schreit/pyglow/src/pyglow/ae/201405"
    "/home/schreit/pyglow/src/pyglow/ae/201406"
    "/home/schreit/pyglow/src/pyglow/ae/201407"
    "/home/schreit/pyglow/src/pyglow/ae/201408"
    "/home/schreit/pyglow/src/pyglow/ae/201409"
    "/home/schreit/pyglow/src/pyglow/ae/201410"
    "/home/schreit/pyglow/src/pyglow/ae/201411"
    "/home/schreit/pyglow/src/pyglow/ae/201412"
    "/home/schreit/pyglow/src/pyglow/ae/201501"
    "/home/schreit/pyglow/src/pyglow/ae/201502"
    "/home/schreit/pyglow/src/pyglow/ae/201503"
    "/home/schreit/pyglow/src/pyglow/ae/201504"
    "/home/schreit/pyglow/src/pyglow/ae/201505"
    "/home/schreit/pyglow/src/pyglow/ae/201506"
    "/home/schreit/pyglow/src/pyglow/ae/201507"
    "/home/schreit/pyglow/src/pyglow/ae/201508"
    "/home/schreit/pyglow/src/pyglow/ae/201509"
    "/home/schreit/pyglow/src/pyglow/ae/201510"
    "/home/schreit/pyglow/src/pyglow/ae/201511"
    "/home/schreit/pyglow/src/pyglow/ae/201512"
    "/home/schreit/pyglow/src/pyglow/ae/201601"
    "/home/schreit/pyglow/src/pyglow/ae/201602"
    "/home/schreit/pyglow/src/pyglow/ae/201603"
    "/home/schreit/pyglow/src/pyglow/ae/201604"
    "/home/schreit/pyglow/src/pyglow/ae/201605"
    "/home/schreit/pyglow/src/pyglow/ae/201606"
    "/home/schreit/pyglow/src/pyglow/ae/201607"
    "/home/schreit/pyglow/src/pyglow/ae/201608"
    "/home/schreit/pyglow/src/pyglow/ae/201609"
    "/home/schreit/pyglow/src/pyglow/ae/201610"
    "/home/schreit/pyglow/src/pyglow/ae/201611"
    "/home/schreit/pyglow/src/pyglow/ae/201612"
    "/home/schreit/pyglow/src/pyglow/ae/201701"
    "/home/schreit/pyglow/src/pyglow/ae/201702"
    "/home/schreit/pyglow/src/pyglow/ae/201703"
    "/home/schreit/pyglow/src/pyglow/ae/201704"
    "/home/schreit/pyglow/src/pyglow/ae/201705"
    "/home/schreit/pyglow/src/pyglow/ae/201706"
    "/home/schreit/pyglow/src/pyglow/ae/201707"
    "/home/schreit/pyglow/src/pyglow/ae/201708"
    "/home/schreit/pyglow/src/pyglow/ae/201709"
    "/home/schreit/pyglow/src/pyglow/ae/201710"
    "/home/schreit/pyglow/src/pyglow/ae/201711"
    "/home/schreit/pyglow/src/pyglow/ae/201712"
    "/home/schreit/pyglow/src/pyglow/ae/201801"
    "/home/schreit/pyglow/src/pyglow/ae/201802"
    "/home/schreit/pyglow/src/pyglow/ae/201803"
    "/home/schreit/pyglow/src/pyglow/ae/201804"
    "/home/schreit/pyglow/src/pyglow/ae/201805"
    "/home/schreit/pyglow/src/pyglow/ae/201806"
    "/home/schreit/pyglow/src/pyglow/ae/201807"
    "/home/schreit/pyglow/src/pyglow/ae/201808"
    "/home/schreit/pyglow/src/pyglow/ae/201809"
    "/home/schreit/pyglow/src/pyglow/ae/201810"
    "/home/schreit/pyglow/src/pyglow/ae/201811"
    "/home/schreit/pyglow/src/pyglow/ae/201812"
    "/home/schreit/pyglow/src/pyglow/ae/201901"
    "/home/schreit/pyglow/src/pyglow/ae/201902"
    "/home/schreit/pyglow/src/pyglow/ae/201903"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/schreit/pyglow/_skbuild/linux-x86_64-3.10/cmake-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
