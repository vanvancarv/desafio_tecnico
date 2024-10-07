## Projeto
Desafio técnico Monuv

Esse projeto foi elaborado para realizar a automação de testes do formulário CAC. Disponivel no link: https://cac-tat.s3.eu-central-1.amazonaws.com/index.html.
Com os testes é possível analisar cenários e validar funções para aprimorar sua funcionalidade.

## Instalação
Para executar o teste é necessário:
1) Instalar o Python:
 1.1) Acesse o site oficial do Python (python.org) e baixe a versão mais recente do Python.
 1.2) Durante a instalação, marque a opção "Add Python to PATH".
 1.3) Verifique se o Python foi instalado através da execução do comando no cmd que retorna a versão instalada: pip --version

2) Instalar o Robot Framework:
 2.1) Para instalar o Robot, pode ser executado o comando no cmd: pip install robotframework 

3) Instalar bibliotecas
 3.1) Para instalar a biblioteca selenium, pode ser executado o comando: pip install robotframework-seleniumlibrary
 3.2) Para instalar a biblioteca faker, pode ser executado o comando: pip install faker

 4) Instalar o chrome driver
  4.1) Verificar a versão do browser que será usado para teste. Essa informação é exibida em:
      4.1.1) Abrir o Chrome
      4.1.2) No canto superior direito, procurar a opção Mais
      4.1.3) Clicar em Ajuda
      4.1.4) Sobre o Chrome 
  4.2) Baixar a versão do chrome driver do mesmo navegador que será testado no link https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br
  4.3) Localizar a pasta de scripts
       4.3.1) Buscar as variavéis de ambiente no painel de controle
       4.3.2) Clicar em variaveis de ambiente
       4.3.3) Encontrar a pasta de armezenamento de scripts do Python (...\Python\Python312\Scripts\)
       4.3.4) Abrir a pasta do python
       4.3.5) Copiar o chromedriver.exe baixado e colar na pasta de scripts do Python

 ## Uso
 5) Para executar o teste com todos os cases, pode ser usado o sequinte comando para: 
 robot -d results tests/cac/formulario.robot
  5.1) usando -d results, vai ser criado uma pasta results, que armazenará os resultados
  5.2) para executar somente os casos de teste regressivo, poder ser usado o comando: 
  robot -d results --i regressivo tests/cac/formulario.robot
  5.3) para executar somente os casos de teste que validam campos obrigatórios, poder ser executado o comando:
  robot -d results --i obrigatorios tests/cac/formulario.robot
  5.4) para executar somente os casos de teste que validam campo telefone, poder ser executado o comando:
  robot -d results --i telefone tests/cac/formulario.robot

 ## Estrutura do projeto
6) A estrutura do projeto segue o padrão Page Object Model (POM) que ajuda a organizar os testes de forma mais eficiente e de maior clareza. 

 6.1) elements: Contem xpaths e outros locators como (botão, texto, link) que identificam elementos da interface com o usuário
  6.1.1) home: Contem todos os elementos que são encontrados na página home
   6.1.1.1) arquivos: Contem arquivo 01_print_site.png usado para testar o upload de arquivo na página home
   6.1.1.2) home_elements.resource: Dicionário de dados com os elementos da página home
  6.1.2) privacy: Contem todos os elementos que são encontrados na página privacy 
   6.1.2.1) privacy_elements.resource: Dicionário de dados com os elementos da página privacy
 6.1.2) main_elements.resource: usado para importar o elements das páginas. Facilita para quando tiver muitas páginas.

 6.2) libs: Contem as bibliotecas 
  6.2.1) FakerLibrary: Contém uma biblioteca customizada em Python, pora poder usar a biblioteca Faker (não nativa do Robot) e gerar dados randômicos no teste como por exemplo nome, telefone e email.

6.3) resource: Contem recursos usados na automação como por exemplo palavras chaves, variáveis e biblioteca
 6.3.1) settings.resource: Contém bibliotecas e variáveis de configuração usadas no projeto

6.4) results: Pasta criada para armazenar os resultados do teste como prints, logs e relatórios

6.5) steps: Contém as palavras chaves usadas no teste, que indicam o que fazer em cada etapa do teste
 6.5.1) home: todos os steps da página home
 6.5.1.1) home_steps.robot: contém as palavras chaves que são usada na página home
 6.5.2) main_steps.robot: usado para importar os steps da pagina home

6.6) tests: Contém os casos de teste que serão usados no projeto
 6.6.1) cac: Contém todos os testes relacionados ao site cac
 6.6.1.2) formulario.robot: Contém os BDDs com os cenários aplicados para esse projeto
 