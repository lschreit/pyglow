project('pyglow', 'c', 'fortran',
  version : '0.1.0',
  default_options : ['warning_level=2', 'werror=true']
)
add_languages('fortran')

py_mod = import('python')
py = py_mod.find_installation(pure: false)
py_dep = py.dependency()

incdir_numpy = run_command(py,
                           ['-c', 'import os; os.chdir(".."); import numpy; print(numpy.get_include())'],
                           check : true
).stdout().strip()

incdir_f2py = run_command(py,
                          ['-c', 'import os; os.chdir(".."); import numpy.f2py; print(numpy.f2py.get_include())'],
                          check : true
).stdout().strip()

inc_np = include_directories(incdir_numpy, incdir_f2py)

pyglow_mod_dir = meson.source_root() / 'src/pyglow/models/dl_models'

# Custom targets to preprocess Fortran files
remove_non_ascii = custom_target('remove_non_ascii',
  input : [],
  output : 'remove_non_ascii',
  command : [python, meson.source_root() / 'remove_non_ascii.py', pyglow_mod_dir],
  build_by_default : true
)

reencode_files = custom_target('reencode_files',
  input : [],
  output : 'reencode_files',
  command : [python, meson.source_root() / 'reencode_files.py', pyglow_mod_dir / 'hwm07'],
  build_by_default : true
)

run_make_command = custom_target('run_make_command',
  input : [],
  output : 'run_make_command',
  command : ['sh', '-c', 'make -C ' + pyglow_mod_dir / 'hwm07' + ' sig'],
  build_by_default : true
)

# Function to add a project
def add_project(project_name, fortran_files, pyf_file, compile_options):
  fortran_src_file = fortran_files.split(';')
  fortran_files = [pyglow_mod_dir / f for f in fortran_src_file]
  module_c = project_name + 'module.c'

  model_source = custom_target(module_c,
                             input : [fortran_files, pyglow_mod_dir / pyf_file],  # .f so no F90 wrappers
                             output : [module_c, project_name+'-f2pywrappers.f'],
                             command : [py, '-m', 'numpy.f2py', '@INPUT@', '-m', 'fibby', '--lower']
)
  inc_np = include_directories(incdir_numpy, incdir_f2py)

  py.extension_module('fibby',
                    ['fib1.f', fibby_source],
                    incdir_f2py / 'fortranobject.c',
                    include_directories: inc_np,
                    dependencies : py_dep,
                    install : true

# Example of adding projects
add_project('igrf11py', 'igrf11/igrf11_modified.f', 'igrf11/sig_file_patched.pyf', ['-std=legacy'])
#add_project('igrf12py', 'igrf12/igrf12_modified.f', 'igrf12/sig_file_patched.pyf', ['-std=legacy'])
#add_project('hwm93py', 'hwm93/hwm93_modified.f', 'hwm93/sig_file_patched.pyf', ['-std=legacy'])
#add_project('hwm07py', 'hwm07/hwm07e_modified.f90;hwm07/apexcord.f90', 'hwm07/sig_file.pyf', ['-fPIC'])
#add_project('hwm14py', 'hwm14/hwm14.f90', 'hwm14/sig_file.pyf', ['-std=legacy'])
#add_project('iri12py', 'iri12/cira.for;iri12/igrf.for;iri12/iridreg_modified.for;iri12/irifun.for;iri12/irisub.for;iri12/iritec.for;iri12/iriflip.for', 'iri12/sig_file_patched.pyf', ['-std=legacy', '-w', '-O2', '-fbacktrace', '-fno-automatic', '-fPIC'])
#add_project('iri16py', 'iri16/cira.for;iri16/igrf.for;iri16/iridreg_modified.for;iri16/irifun.for;iri16/irisub.for;iri16/iritec.for;iri16/iriflip_modified.for;iri16/cosd_sind.for', 'iri16/sig_file_patched.pyf', ['-std=legacy', '-w', '-O2', '-fbacktrace', '-fno-automatic', '-fPIC'])
#add_project('iri20py', 'iri20/cira.for;iri20/igrf.for;iri20/iridreg_modified.for;iri20/irifun.for;iri20/irisub.for;iri20/iritec.for;iri20/iriflip_modified.for;iri20/cosd_sind.for;iri20/rocdrift.for', 'iri20/sig_file_patched.pyf', ['-std=legacy', '-w', '-O2', '-fbacktrace', '-fno-automatic', '-fPIC'])
#add_project('msis00py', 'msis/nrlmsise00_sub_patched.for', 'msis/sig_file_patched.pyf', ['-std=legacy'])

# Install data files
install_data([
  'src/pyglow/models/dl_models/hwm07/apexgrid.dat',
  'src/pyglow/models/dl_models/hwm07/dwm07b_104i.dat',
  'src/pyglow/models/dl_models/hwm07/hwm071308e.dat'
], install_dir : 'pyglow/hwm07_data/')

install_data([
  'src/pyglow/models/dl_models/hwm14/gd2qd.dat',
  'src/pyglow/models/dl_models/hwm14/dwm07b104i.dat',
  'src/pyglow/models/dl_models/hwm14/hwm123114.bin'
], install_dir : 'pyglow/hwm14_data/')

install_data([
  'src/pyglow/models/dl_models/iri12/apf107.dat',
  'src/pyglow/models/dl_models/iri12/ccir11.asc',
  'src/pyglow/models/dl_models/iri12/ccir12.asc',
  ...
  'src/pyglow/models/dl_models/iri12/ursi22.asc'
], install_dir : 'pyglow/iri12_data/')

install_data([
  'src/pyglow/models/dl_models/iri16/apf107.dat',
  'src/pyglow/models/dl_models/iri16/ccir11.asc',
  ...
  'src/pyglow/models/dl_models/iri16/ursi22.asc'
], install_dir : 'pyglow/iri16_data/')

install_data([
  'src/pyglow/models/dl_models/iri20/apf107.dat',
  ...
  'src/pyglow/models/dl_models/iri20/ursi22.asc'
], install_dir : 'pyglow/iri20_data/')

install_data(glob('src/pyglow/kpap/*'), install_dir : 'pyglow/kpap/')
install_data(glob('src/pyglow/dst/*'), install_dir : 'pyglow/dst/')
install_data(glob('src/pyglow/ae/*'), install_dir : 'pyglow/ae/')