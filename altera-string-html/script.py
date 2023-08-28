import pandas as pd
from jinja2 import Environment, FileSystemLoader

def generate_html_from_csv(input_file, output_file, template_file):
    # Ler os dados do arquivo CSV usando pandas
    data = pd.read_csv(input_file)
    print("lendo csv")
    # Configurar o ambiente Jinja2 para carregar o template
    env = Environment(loader=FileSystemLoader('.'))
    template = env.get_template(template_file)
    print("preparando template")
    # Iterar pelos dados do CSV e gerar o HTML personalizado
    print("começando for")
    for index, row in data.iterrows():
        context = {
            'campo1': row['Nome'],
            'campo2': row['Cargo']
        }
        html_output = template.render(context)
        nome=row['Nome']
        # Escrever o HTML gerado em um arquivo de saída
        with open(f'{nome}.html', 'w') as file:
            file.write(html_output)

if __name__ == '__main__':
    # Arquivo CSV contendo os valores para campo1 e campo2
    input_file = 'dados.csv'
    print("csv lido")
    # Arquivo de saída contendo o HTML gerado com os valores substituídos
    output_file = 'html_personalizado'
    
    # Arquivo de template HTML
    template_file = 'template.html'

    generate_html_from_csv(input_file, output_file, template_file)
