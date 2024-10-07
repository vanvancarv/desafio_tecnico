## Projeto
**Desafio técnico Monuv**

Esse projeto foi elaborado para realizar a automação de testes do formulário CAC.  
Disponível no link: [https://cac-tat.s3.eu-central-1.amazonaws.com/index.html](https://cac-tat.s3.eu-central-1.amazonaws.com/index.html).  
Com os testes, é possível analisar cenários e validar funções para aprimorar sua funcionalidade.

## Instalação
Para executar o teste, é necessário:

1. **Instalar o Python**:
   - Acesse o site oficial do Python [python.org](https://www.python.org) e baixe a versão mais recente.
   - Durante a instalação, marque a opção **"Add Python to PATH"**.
   - Verifique se o Python foi instalado corretamente, executando o seguinte comando no terminal:
     ```bash
     pip --version
     ```

2. **Instalar o Robot Framework**:
   - Para instalar o Robot Framework, execute o seguinte comando no terminal:
     ```bash
     pip install robotframework
     ```

3. **Instalar as bibliotecas necessárias**:
   - Para instalar a biblioteca Selenium, execute:
     ```bash
     pip install robotframework-seleniumlibrary
     ```
   - Para instalar a biblioteca Faker, execute:
     ```bash
     pip install faker
     ```

4. **Instalar o ChromeDriver**:
   - Verifique a versão do navegador Chrome que será usada nos testes:
     1. Abra o Chrome.
     2. No canto superior direito, clique em **Mais** (três pontos).
     3. Vá em **Ajuda > Sobre o Google Chrome**.
   - Baixe a versão correspondente do ChromeDriver em: [ChromeDriver Downloads](https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br).
   - Localize a pasta de scripts do Python:
     1. Abra o **Painel de Controle** e busque por **Variáveis de Ambiente**.
     2. Clique em **Variáveis de Ambiente**.
     3. Encontre a pasta de scripts do Python (ex: `...\Python\Python312\Scripts\`).
     4. Copie o arquivo `chromedriver.exe` baixado e cole na pasta de scripts do Python.

## Uso
  5. **Executando os testes**:
   - Para executar o teste com todos os casos, pode ser usado o seguinte comando:
   ```bash
   robot -d results tests/cac/formulario.robot
   ```
   - Utilizando -d results será criado a pasta results, que armazenará os resultados
   - Para executar somente os casos de teste regressivo, poder ser usado o comando:
   ```bash
   robot -d results --i regressivo tests/cac/formulario.robot
   ```
   - Para executar somente os casos de teste que validam campos obrigatórios, poder ser executado o comando:
   ```bash
   robot -d results --i obrigatorios tests/cac/formulario.robot
   ```
   - Para executar somente os casos de teste que validam campo telefone, poder ser executado o comando:
   ```bash
   robot -d results --i telefone tests/cac/formulario.robot
   ```
  

## Estrutura do projeto

A estrutura do projeto segue o padrão **Page Object Model (POM)**, que ajuda a organizar os testes de forma mais eficiente e clara.

### 6.1. elements
Contém xpaths e outros localizadores (botão, texto, link) que identificam elementos da interface com o usuário.

- **home**: Contém todos os elementos da página inicial.
  - `01_print_site.png`: Arquivo usado para testar o upload de arquivo na página inicial.
  - `home_elements.resource`: Dicionário de dados com os elementos da página inicial.

- **privacy**: Contém todos os elementos da página de privacidade.
  - `privacy_elements.resource`: Dicionário de dados com os elementos da página de privacidade.

- **main_elements.resource**: Usado para importar elementos de várias páginas, facilitando a manutenção quando há muitas páginas.

### 6.2. libs
Contém bibliotecas personalizadas.

- **FakerLibrary**: Contém uma biblioteca customizada em Python, permitindo o uso da biblioteca Faker (não nativa do Robot) para gerar dados randômicos, como nome, telefone e e-mail.

### 6.3. resource
Contém recursos usados na automação, como palavras-chave, variáveis e bibliotecas.

- `settings.resource`: Contém bibliotecas e variáveis de configuração usadas no projeto.

### 6.4. results
Pasta criada para armazenar os resultados do teste, como capturas de tela, logs e relatórios.

### 6.5. steps
Contém as palavras-chave usadas no teste, que indicam o que fazer em cada etapa do teste.

- **home**: Contém os steps da página inicial.
  - `home_steps.robot`: Contém as palavras-chave usadas na página inicial.
  
- `main_steps.robot`: Usado para importar os steps da página inicial.

### 6.6. tests
Contém os casos de teste usados no projeto.

- **cac**: Contém todos os testes relacionados ao site CAC.
  - `formulario.robot`: Contém os BDDs com os cenários aplicados para este projeto.
