from skbuild import setup


setup(
    name='pyglow',
    version='0.1.0',
    description='Upper atmosphere climatological models in Python',
    author='Timothy M. Duly',
    author_email='timduly4@gmail.com',
    url='https://github.com/lschreit/pyglow',
    packages=['pyglow'],
    package_dir={'pyglow': 'src/pyglow'},
    cmake_install_dir='src/pyglow',
    install_requires=[
        'future',
        'numpy',
        'python-dateutil',
        'pytest',
        'coverage',
    ],
)