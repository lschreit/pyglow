from skbuild import setup
import glob

KPAP_FILES = sorted(glob.glob('src/pyglow/kpap/*'))
DST_FILES = sorted(glob.glob('src/pyglow/dst/*'))
AE_FILES = sorted(glob.glob('src/pyglow/ae/*'))

setup(
    name='pyglow',
    version='0.1.0',
    packages=['pyglow'],
    package_dir={'pyglow': 'src/pyglow'},
    cmake_install_dir='src/pyglow',
    cmake_source_dir='.',
    install_requires=[
        'future',
        'numpy',
        'python-dateutil',
        'pytest',
        'coverage',
    ],
)