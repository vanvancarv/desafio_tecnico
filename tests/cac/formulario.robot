** Settings **
Resource  ../../steps/main_steps.robot
Test Setup  Dado que acesso o site cat
Test Teardown  Fechar navegador
Library    ../../libs/FakerLibrary.py

** Test Cases **
Cenário 1: Enviar o formulário com todos os campos preenchidos corretamente
    [Documentation]    Este cenário verifica se todos os campos estão funcionando quando preenchidos. Seria o caminho feliz
    [Tags]   regressivo
    Quando preencho todos os campos
    E adiciono um anexo
    E clico no botão enviar
    Então o formulário é enviado com sucesso

Cenário 2: Validar o campo obrigatorio nome
    [Documentation]    Este cenário verifica se ao não preencher o nome,que é um campo obrigatório, ele envia algum alerta e não deixa enviar o formulário
    [Tags]   regressivo     obrigatorios
    Quando preencho todos os campos obrigatórios
    E limpo o campo    input_nome
    E clico no botão enviar
    Então valido que a mensagem de campos obrigatórios é exibida corretamente

Cenário 3: Validar o campo obrigatorio sobrenome
    [Documentation]    Este cenário verifica se ao não preencher o sobrenome, que é um campo obrigatório, ele envia algum alerta e não deixa enviar o formulário
    [Tags]   regressivo     obrigatorios
    Quando preencho todos os campos obrigatórios
    E limpo o campo    input_sobrenome
    E clico no botão enviar
    Então valido que a mensagem de campos obrigatórios é exibida corretamente  

Cenário 4: Validar o campo obrigatorio email
    [Documentation]    Este cenário verifica se ao não preencher o email, que é um campo obrigatório, ele envia algum alerta e não deixa enviar o formulário
    [Tags]   regressivo     obrigatorios
    Quando preencho todos os campos obrigatórios
    E limpo o campo    input_email
    E clico no botão enviar
    Então valido que a mensagem de campos obrigatórios é exibida corretamente  

Cenário 5: Validar o campo obrigatorio telefone
    [Documentation]    Este cenário verifica se ao selecionar o check de meio de contato telefone, ele torna o campo telefone obrigatório
    [Tags]   regressivo     telefone
    Quando preencho todos os campos obrigatórios
    E seleciono o meio de contato preferencial telefone
    E clico no botão enviar
    Então valido que a mensagem de campos obrigatórios é exibida corretamente

Cenário 6: Validar o campo obrigatorio sugestão
    [Documentation]    Este cenário verifica se ao não preencher o sugestão, que é um campo obrigatório, ele envia algum alerta e não deixa enviar o formulário
    [Tags]   regressivo     obrigatorios
    Quando preencho todos os campos obrigatórios
    E limpo o campo    textarea_sugestao
    E clico no botão enviar
    Então valido que a mensagem de campos obrigatórios é exibida corretamente  

Cenário 7: Validar alerta de campo obrigatório no telefone
    [Documentation]    Este cenário verifica se ao selecionar o check de meio de contato telefone, ele exibe a mensagem de "obrigatório" no campo de telefone
    [Tags]   regressivo     telefone
    Quando preencho todos os campos obrigatórios
    E seleciono o meio de contato preferencial telefone
    Então verifico que a mensagem no campo "obrigatório" foi exibida

Cenário 8: Validar formato do campo de e-mail
    [Documentation]    Este cenário verifica se o formato do e-mail está com @ e envia um aviso caso não esteja
    [Tags]   regressivo    
    Quando preencho todos os campos obrigatórios
    E limpo o campo    input_email
    E preencho o campo email no formato incorreto
    E clico no botão enviar
    Então valido que a mensagem de campos obrigatórios é exibida corretamente     

Cenário 9: Acessar página de politica de privacidade
    [Documentation]    Este cenário verifica se ao clicar no link Politica de privacidade, ele direciona para outra página
    [Tags]   regressivo
    Quando clico em politica de privacidade
    Então valido que sou redirecionado para a página da politica de privacidade