set(CMAKE_Fortran_COMPILER "/usr/bin/gfortran")
set(CMAKE_Fortran_COMPILER_ARG1 "")
set(CMAKE_Fortran_COMPILER_ID "GNU")
set(CMAKE_Fortran_COMPILER_VERSION "7.5.0")
set(CMAKE_Fortran_COMPILER_WRAPPER "")
set(CMAKE_Fortran_PLATFORM_ID "")
set(CMAKE_Fortran_SIMULATE_ID "")
set(CMAKE_Fortran_COMPILER_FRONTEND_VARIANT "GNU")
set(CMAKE_Fortran_SIMULATE_VERSION "")




set(CMAKE_AR "/usr/bin/ar")
set(CMAKE_Fortran_COMPILER_AR "/usr/bin/gcc-ar-7")
set(CMAKE_RANLIB "/usr/bin/ranlib")
set(CMAKE_LINKER "/usr/bin/ld")
set(CMAKE_Fortran_COMPILER_RANLIB "/usr/bin/gcc-ranlib-7")
set(CMAKE_TAPI "CMAKE_TAPI-NOTFOUND")
set(CMAKE_COMPILER_IS_GNUG77 1)
set(CMAKE_Fortran_COMPILER_LOADED 1)
set(CMAKE_Fortran_COMPILER_WORKS TRUE)
set(CMAKE_Fortran_ABI_COMPILED TRUE)

set(CMAKE_Fortran_COMPILER_ENV_VAR "FC")

set(CMAKE_Fortran_COMPILER_SUPPORTS_F90 1)

set(CMAKE_Fortran_COMPILER_ID_RUN 1)
set(CMAKE_Fortran_SOURCE_FILE_EXTENSIONS f;F;fpp;FPP;f77;F77;f90;F90;for;For;FOR;f95;F95;f03;F03;f08;F08)
set(CMAKE_Fortran_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_Fortran_LINKER_PREFERENCE 20)
set(CMAKE_Fortran_LINKER_DEPFILE_SUPPORTED TRUE)
if(UNIX)
  set(CMAKE_Fortran_OUTPUT_EXTENSION .o)
else()
  set(CMAKE_Fortran_OUTPUT_EXTENSION .obj)
endif()

# Save compiler ABI information.
set(CMAKE_Fortran_SIZEOF_DATA_PTR "8")
set(CMAKE_Fortran_COMPILER_ABI "")
set(CMAKE_Fortran_LIBRARY_ARCHITECTURE "")

if(CMAKE_Fortran_SIZEOF_DATA_PTR AND NOT CMAKE_SIZEOF_VOID_P)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_Fortran_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_Fortran_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_Fortran_COMPILER_ABI}")
endif()

if(CMAKE_Fortran_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()





set(CMAKE_Fortran_IMPLICIT_INCLUDE_DIRECTORIES "/usr/lib64/gcc/x86_64-suse-linux/7/finclude;/home/schreit/intel/oneapi/umf/0.9/include;/home/schreit/intel/oneapi/tbb/2022.0/include;/home/schreit/intel/oneapi/pti/0.10/include;/home/schreit/intel/oneapi/mpi/2021.14/include;/home/schreit/intel/oneapi/mkl/2025.0/include;/home/schreit/intel/oneapi/ippcp/2025.0/include;/home/schreit/intel/oneapi/ipp/2022.0/include;/home/schreit/intel/oneapi/dpl/2022.7/include;/home/schreit/intel/oneapi/dpcpp-ct/2025.0/include;/home/schreit/intel/oneapi/dnnl/2025.0/include;/home/schreit/intel/oneapi/dev-utilities/2025.0/include;/home/schreit/intel/oneapi/dal/2025.0/include;/home/schreit/intel/oneapi/ccl/2021.14/include;/usr/lib64/gcc/x86_64-suse-linux/7/include;/usr/local/include;/usr/lib64/gcc/x86_64-suse-linux/7/include-fixed;/usr/x86_64-suse-linux/include;/usr/include")
set(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "gfortran;m;gcc_s;gcc;quadmath;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES "/usr/lib64/gcc/x86_64-suse-linux/7;/usr/lib64;/lib64;/home/schreit/intel/oneapi/tcm/1.2/lib;/home/schreit/intel/oneapi/umf/0.9/lib;/home/schreit/intel/oneapi/tbb/2022.0/lib/intel64/gcc4.8;/home/schreit/intel/oneapi/pti/0.10/lib;/home/schreit/intel/oneapi/mpi/2021.14/lib;/home/schreit/intel/oneapi/mkl/2025.0/lib;/home/schreit/intel/oneapi/ippcp/2025.0/lib;/home/schreit/intel/oneapi/ipp/2022.0/lib;/home/schreit/intel/oneapi/dnnl/2025.0/lib;/home/schreit/intel/oneapi/dal/2025.0/lib;/home/schreit/intel/oneapi/compiler/2025.0/lib;/home/schreit/intel/oneapi/ccl/2021.14/lib;/usr/x86_64-suse-linux/lib")
set(CMAKE_Fortran_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
