input_filename = r'C:\Users\caio.silva\Downloads\17-08 Juiz de fora - Página2.csv'
output_filename_pattern = r'C:\Users\caio.silva\Documentos\lista_dividida_'
line_limit = 100
line = 0
i = 0
file_number = 0
start = 0

with open(input_filename, 'r') as input_file:
    lines = input_file.readlines()
    total_lines = len(lines)

    while line <= total_lines:
        if i == line_limit or line == total_lines:
            file_number += 1
            filename = f"{output_filename_pattern}{file_number}.csv"
            with open(filename, 'w') as output_file:
                # tá inserindo o "telefone" em todas, mas criando uma vazia
                output_file.write("telefone\n")
                output_file.writelines(lines[start:line])
            start = line
            i = 0
            print(filename)
        
        i += 1
        line += 1
