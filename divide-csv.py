import os
import sys

if len(sys.argv) != 2:
    print("Uso: python divide-csv.py <arquivo>")
else:
    arg1 = sys.argv[1]
    print(f"Arquivo: {arg1}")
    input_filename = rf"C:\CSV\{arg1}"
    output_filename_pattern = r"venc_aprox_"
    line_limit = 150
    line = 0
    i = 0
    file_number = 0
    start = 0
    
    with open(input_filename, 'r') as input_file:
        lines = input_file.readlines() 
        total_lines = len(lines) 
    
        while line <= total_lines: 
            if  i == line_limit or line == total_lines:
                file_number += 1 
                filename = f"{output_filename_pattern}{file_number}.csv"
                with open(filename, 'w') as output_file: 
                    output_file.write("telefone\n") 
                    output_file.writelines(lines[start:line]) 
                start = line 
                i = 0 
                print(filename)
            
            i += 1 
            line += 1 
