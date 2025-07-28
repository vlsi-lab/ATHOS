import os
import shutil

# Specify the absolute paths to the SystemVerilog source files and the build folder
script_directory = os.path.dirname(os.path.abspath(__file__))
rtl_source_dir = os.path.join(script_directory, '../../../hw/rtl')
vendor_source_dir = os.path.join(script_directory, '../../../hw/vendor/sha3/src')
build_folder = os.path.join(script_directory, '../../../build/polito_vlsi_lab_athos_0')
tb_source_dir =  os.path.join(script_directory, '../../../tb')

# List of file extensions to consider as SystemVerilog source files
verilog_extensions = ['.sv', '.v']

# Initialize a list to store the paths of the SystemVerilog files
sv_files = []
tb_files = []

# Function to analyze and copy SystemVerilog files
def analyze_and_copy_sv_files(source_dir, destination_dir):
    for root, dirs, files in os.walk(source_dir):
        for file in files:
            if file.endswith('.sv'):  # Only consider .sv files
                source_file_path = os.path.join(root, file)
                destination_file_path = os.path.join(destination_dir, file)
                shutil.copy(source_file_path, destination_file_path)
                sv_files.append(destination_file_path)  # Update the global sv_files list

# Function to analyze and copy SystemVerilog files
def analyze_and_copy_tb_files(source_dir, destination_dir):
    for root, dirs, files in os.walk(source_dir):
        for file in files:
            if file.endswith('.sv'):  # Only consider .sv files
                source_file_path = os.path.join(root, file)
                destination_file_path = os.path.join(destination_dir, file)
                shutil.copy(source_file_path, destination_file_path)
                tb_files.append(destination_file_path)  # Update the global sv_files list


# Analyze and copy RTL SystemVerilog files
analyze_and_copy_sv_files(rtl_source_dir, build_folder)

# Analyze and copy vendor SystemVerilog files
analyze_and_copy_sv_files(vendor_source_dir, build_folder)

# Analyze and copy tb SystemVerilog files
analyze_and_copy_tb_files(tb_source_dir, build_folder)

# Define the path for the analyze.tcl file
analyze_tcl_path = os.path.join(os.path.dirname(__file__), build_folder, 'analyze.tcl')



# Generate the analyze.tcl file
with open(analyze_tcl_path, 'w') as analyze_tcl_file:
    analyze_tcl_file.write(f'set workdir [pwd]\nputs "Working directory :"\nputs $workdir\nquit -sim\n\n')

    analyze_tcl_file.write(f'vlog -sv -work work /home/alessandra.dolmeta/athos/scripts/sim/modelsim/../../../build/polito_vlsi_lab_athos_0/athos_pkg.sv\n')
    for sv_file in sv_files:
        analyze_tcl_file.write(f'vlog -sv -work work {sv_file}\n')
    
    for tb_file in tb_files:
        analyze_tcl_file.write(f' vlog -work work -vopt -sv -stats=none {tb_file}\n')
    
    analyze_tcl_file.write(f'vsim -t 1ns work.tb_athos -voptargs=+acc\n')
    analyze_tcl_file.write(f'do ../../scripts/sim/modelsim/athos_tb.do\n')
    analyze_tcl_file.write(f'run -all\n')

print(f'Analyze script saved to {analyze_tcl_path}')
