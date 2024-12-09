#!/usr/bin/env python3

import os
from setuptools import setup, find_packages
from pybind11.setup_helpers import Pybind11Extension, build_ext

DL_MODELS = 'src/pyglow/models/dl_models'

# Define extensions
extensions = [
    Pybind11Extension(
        name='igrf11py',
        sources=[os.path.join(DL_MODELS, 'igrf11', fname) for fname in [
            'igrf11_modified.f', 'sig_file_patched.pyf'
        ]]
    ),
    Pybind11Extension(
        name='igrf12py',
        sources=[os.path.join(DL_MODELS, 'igrf12', fname) for fname in [
            'igrf12_modified.f', 'sig_file_patched.pyf'
        ]]
    ),
    Pybind11Extension(
        name='hwm93py',
        sources=[os.path.join(DL_MODELS, 'hwm93', fname) for fname in [
            'hwm93_modified.f', 'sig_file_patched.pyf'
        ]],
        extra_compile_args=['-std=legacy']
    ),
    Pybind11Extension(
        name='hwm07py',
        sources=[os.path.join(DL_MODELS, 'hwm07', fname) for fname in [
            'hwm07e_modified.f90', 'apexcord.f90', 'sig_file.pyf'
        ]]
    ),
    Pybind11Extension(
        name='hwm14py',
        sources=[os.path.join(DL_MODELS, 'hwm14', fname) for fname in [
            'hwm14.f90', 'sig_file.pyf'
        ]],
        extra_compile_args=['-std=legacy']
    ),
    Pybind11Extension(
        name='iri12py',
        sources=[os.path.join(DL_MODELS, 'iri12', fname) for fname in [
            'cira.for', 'igrf.for', 'iridreg_modified.for', 'irifun.for',
            'irisub.for', 'iritec.for', 'iriflip.for', 'sig_file_patched.pyf'
        ]],
        extra_compile_args=['-std=legacy', '-w', '-O2', '-fbacktrace',
                            '-fno-automatic', '-fPIC']
    ),
    Pybind11Extension(
        name='iri16py',
        sources=[os.path.join(DL_MODELS, 'iri16', fname) for fname in [
            'cira.for', 'igrf.for', 'iridreg_modified.for', 'irifun.for',
            'irisub.for', 'iritec.for', 'iriflip_modified.for', 'cosd_sind.for',
            'sig_file_patched.pyf'
        ]],
        extra_compile_args=['-std=legacy', '-w', '-O2', '-fbacktrace',
                            '-fno-automatic', '-fPIC']
    ),
    Pybind11Extension(
        name='msis00py',
        sources=[os.path.join(DL_MODELS, 'msis', fname) for fname in [
            'nrlmsise00_sub_patched.for', 'sig_file_patched.pyf'
        ]],
        extra_compile_args=['-std=legacy']
    ),
]

# Setup configuration
setup(
    name='pyglow',
    url='https://github.com/timduly4/pyglow',
    author='Timothy M. Duly',
    author_email='timduly4@gmail.com',
    packages=find_packages(where='src'),
    package_dir={'': 'src'},
    ext_modules=extensions,
    cmdclass={'build_ext': build_ext},
    data_files=[
        ('pyglow_trash', ['src/pyglow/models/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/get_models.py']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/hwm07/dummy.txt']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/hwm93/dummy.txt']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/igrf11/dummy.txt']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/igrf12/dummy.txt']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/iri12/dummy.txt']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/iri16/dummy.txt']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/msis/dummy.txt']),
        ('pyglow_trash', ['src/pyglow/models/dl_models/hwm14/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/f2py/hwm07/hwm07e.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/hwm07/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/f2py/hwm93/hwm93.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/hwm93/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/f2py/hwm93/sig.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/igrf11/igrf11.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/igrf11/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/f2py/igrf11/sig.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/igrf12/igrf12.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/igrf12/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/f2py/igrf12/sig.patch']),
        ('pyglow_trash', [
            'src/pyglow/models/f2py/iri12/delete_iriflip_comments.py'
        ]),
        ('pyglow_trash', ['src/pyglow/models/f2py/iri12/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/f2py/iri12/sig.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/iri12/iridreg.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/msis/Makefile']),
        ('pyglow_trash', ['src/pyglow/models/f2py/msis/nrlmsise00_sub.patch']),
        ('pyglow_trash', ['src/pyglow/models/f2py/msis/sig.patch']),
        ('pyglow/hwm07_data/', [
            'src/pyglow/models/dl_models/hwm07/apexgrid.dat',
            'src/pyglow/models/dl_models/hwm07/dwm07b_104i.dat',
            'src/pyglow/models/dl_models/hwm07/hwm071308e.dat',
        ]),
        (
            'pyglow/hwm14_data/',
            [
                'src/pyglow/models/dl_models/hwm14/gd2qd.dat',
                'src/pyglow/models/dl_models/hwm14/dwm07b104i.dat',
                'src/pyglow/models/dl_models/hwm14/hwm123114.bin',
                'src/pyglow/models/dl_models/hwm14/hwm14.f90',
            ],
        ),
        (
            'pyglow/iri12_data/',
            [
                'src/pyglow/models/dl_models/iri12/apf107.dat',
                'src/pyglow/models/dl_models/iri12/ccir11.asc',
                'src/pyglow/models/dl_models/iri12/ccir12.asc',
                'src/pyglow/models/dl_models/iri12/ccir13.asc',
                'src/pyglow/models/dl_models/iri12/ccir14.asc',
                'src/pyglow/models/dl_models/iri12/ccir15.asc',
                'src/pyglow/models/dl_models/iri12/ccir16.asc',
                'src/pyglow/models/dl_models/iri12/ccir17.asc',
                'src/pyglow/models/dl_models/iri12/ccir18.asc',
                'src/pyglow/models/dl_models/iri12/ccir19.asc',
                'src/pyglow/models/dl_models/iri12/ccir20.asc',
                'src/pyglow/models/dl_models/iri12/ccir21.asc',
                'src/pyglow/models/dl_models/iri12/ccir22.asc',
                'src/pyglow/models/dl_models/iri12/dgrf1945.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1950.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1955.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1960.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1965.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1970.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1975.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1980.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1985.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1990.dat',
                'src/pyglow/models/dl_models/iri12/dgrf1995.dat',
                'src/pyglow/models/dl_models/iri12/dgrf2000.dat',
                'src/pyglow/models/dl_models/iri12/dgrf2005.dat',
                'src/pyglow/models/dl_models/iri12/ig_rz_IPS.dat',
                'src/pyglow/models/dl_models/iri12/ig_rz_SEC.dat',
                'src/pyglow/models/dl_models/iri12/ig_rz.dat',
                'src/pyglow/models/dl_models/iri12/igrf2010.dat',
                'src/pyglow/models/dl_models/iri12/igrf2010s.dat',
                'src/pyglow/models/dl_models/iri12/ursi11.asc',
                'src/pyglow/models/dl_models/iri12/ursi12.asc',
                'src/pyglow/models/dl_models/iri12/ursi13.asc',
                'src/pyglow/models/dl_models/iri12/ursi14.asc',
                'src/pyglow/models/dl_models/iri12/ursi15.asc',
                'src/pyglow/models/dl_models/iri12/ursi16.asc',
                'src/pyglow/models/dl_models/iri12/ursi17.asc',
                'src/pyglow/models/dl_models/iri12/ursi18.asc',
                'src/pyglow/models/dl_models/iri12/ursi19.asc',
                'src/pyglow/models/dl_models/iri12/ursi20.asc',
                'src/pyglow/models/dl_models/iri12/ursi21.asc',
                'src/pyglow/models/dl_models/iri12/ursi22.asc',
            ],
        ),
        (
            'pyglow/iri16_data/',
            [
                'src/pyglow/models/dl_models/iri16/apf107.dat',
                'src/pyglow/models/dl_models/iri16/ccir11.asc',
                'src/pyglow/models/dl_models/iri16/ccir12.asc',
                'src/pyglow/models/dl_models/iri16/ccir13.asc',
                'src/pyglow/models/dl_models/iri16/ccir14.asc',
                'src/pyglow/models/dl_models/iri16/ccir15.asc',
                'src/pyglow/models/dl_models/iri16/ccir16.asc',
                'src/pyglow/models/dl_models/iri16/ccir17.asc',
                'src/pyglow/models/dl_models/iri16/ccir18.asc',
                'src/pyglow/models/dl_models/iri16/ccir19.asc',
                'src/pyglow/models/dl_models/iri16/ccir20.asc',
                'src/pyglow/models/dl_models/iri16/ccir21.asc',
                'src/pyglow/models/dl_models/iri16/ccir22.asc',
                'src/pyglow/models/dl_models/iri16/dgrf1945.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1950.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1955.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1960.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1965.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1970.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1975.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1980.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1985.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1990.dat',
                'src/pyglow/models/dl_models/iri16/dgrf1995.dat',
                'src/pyglow/models/dl_models/iri16/dgrf2000.dat',
                'src/pyglow/models/dl_models/iri16/dgrf2005.dat',
                'src/pyglow/models/dl_models/iri16/dgrf2010.dat',
                'src/pyglow/models/dl_models/iri16/dgrf2015.dat',
                'src/pyglow/models/dl_models/iri16/ig_rz.dat',
                'src/pyglow/models/dl_models/iri16/igrf2020.dat',
                'src/pyglow/models/dl_models/iri16/igrf2020s.dat',
                'src/pyglow/models/dl_models/iri16/mcsat11.dat',
                'src/pyglow/models/dl_models/iri16/mcsat12.dat',
                'src/pyglow/models/dl_models/iri16/mcsat13.dat',
                'src/pyglow/models/dl_models/iri16/mcsat14.dat',
                'src/pyglow/models/dl_models/iri16/mcsat15.dat',
                'src/pyglow/models/dl_models/iri16/mcsat16.dat',
                'src/pyglow/models/dl_models/iri16/mcsat17.dat',
                'src/pyglow/models/dl_models/iri16/mcsat18.dat',
                'src/pyglow/models/dl_models/iri16/mcsat19.dat',
                'src/pyglow/models/dl_models/iri16/mcsat20.dat',
                'src/pyglow/models/dl_models/iri16/mcsat21.dat',
                'src/pyglow/models/dl_models/iri16/mcsat22.dat',
                'src/pyglow/models/dl_models/iri16/ursi11.asc',
                'src/pyglow/models/dl_models/iri16/ursi12.asc',
                'src/pyglow/models/dl_models/iri16/ursi13.asc',
                'src/pyglow/models/dl_models/iri16/ursi14.asc',
                'src/pyglow/models/dl_models/iri16/ursi15.asc',
                'src/pyglow/models/dl_models/iri16/ursi16.asc',
                'src/pyglow/models/dl_models/iri16/ursi17.asc',
                'src/pyglow/models/dl_models/iri16/ursi18.asc',
                'src/pyglow/models/dl_models/iri16/ursi19.asc',
                'src/pyglow/models/dl_models/iri16/ursi20.asc',
                'src/pyglow/models/dl_models/iri16/ursi21.asc',
                'src/pyglow/models/dl_models/iri16/ursi22.asc',
            ],
        ),
        (
            'pyglow/kpap/',
            KPAP_FILES,
        ),
        (
            'pyglow/dst/',
            DST_FILES,
        ),
        (
            'pyglow/ae/',
            AE_FILES,
        ),
    ],
)

print("... All done!")