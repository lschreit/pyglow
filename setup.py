import glob
import os
from setuptools import setup, Extension
from setuptools.command.build_ext import build_ext as _build_ext
import numpy

class build_ext(_build_ext):
    def finalize_options(self):
        _build_ext.finalize_options(self)
        if self.distribution.ext_modules:
            self.include_dirs.append(numpy.get_include())

DL_MODELS = 'src/pyglow/models/dl_models'

KPAP_FILES = sorted(glob.glob('src/pyglow/kpap/*'))
DST_FILES = sorted(glob.glob('src/pyglow/dst/*'))
AE_FILES = sorted(glob.glob('src/pyglow/ae/*'))

def reencode(dosfile, target='utf-8'):
    with open(dosfile, 'r', encoding='cp1251', errors='ignore') as f:
        content = f.read()
    with open(dosfile, 'w', encoding=target) as f:
        f.write(content)

    return

# Define extensions
igrf11 = Extension(name='igrf11py', sources=[os.path.join(DL_MODELS, 'igrf11', fname) for fname in ['igrf11_modified.f', 'sig_file_patched.pyf']])
igrf12 = Extension(name='igrf12py', sources=[os.path.join(DL_MODELS, 'igrf12', fname) for fname in ['igrf12_modified.f', 'sig_file_patched.pyf']])
# Add other extensions similarly...

# setuptools setup
setup(
    name='pyglow',
    url='https://github.com/timduly4/pyglow',
    author='Timothy M. Duly',
    author_email='timduly4@gmail.com',
    packages=['pyglow'],
    package_dir={'pyglow': 'src/pyglow'},
    ext_modules=[igrf11, igrf12],  # List all extensions here
    data_files=[KPAP_FILES, DST_FILES,AE_FILES],  # List all data files here
    cmdclass={'build_ext': build_ext},
    setup_requires=['numpy'],
)