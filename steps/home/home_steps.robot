** Settings **
Resource  ../../resource/settings.resource
Resource  ../../elements/main_elements.resource

** Keywords **
Dado que acesso o site cat
    Open Browser                     ${url}                       ${browser}
    Maximize Browser Window 

Quando preencho todos os campos
    ${nome}=                         gera_nome
    ${sobrenome}=                    gera_sobrenome
    ${telefone}=                     gera_telefone_formato_especifico
    ${email}=                        gera_email
    Input Text                       ${home.input_nome}           ${nome}
    Input Text                       ${home.input_sobrenome}      ${sobrenome}
    Input Text                       ${home.input_email}          ${email}
    Input Text                       ${home.input_telefone}       ${telefone}
    Select From List By Index        ${home.select_produto}       2
    Click Element                    ${home.input_rdelogio} 
    Select Checkbox                  ${home.input_ckemail} 
    Select Checkbox                  ${home.input_cktelefone}
    Input Text                       ${home.textarea_sugestao}    Site muito bem elaborado

Quando preencho todos os campos obrigatórios
    [Documentation]    Esta palavra-chave será usada inicialmente no restante dos teste, não sendo necessário preencher todos os campos    
    ${nome}=                         gera_nome
    ${sobrenome}=                    gera_sobrenome
    ${email}=                        gera_email_gmail
    Input Text                       ${home.input_nome}           ${nome}
    Input Text                       ${home.input_sobrenome}      ${sobrenome}
    Input Text                       ${home.input_email}          ${email}
    Select From List By Index        ${home.select_produto}       1
    Click Element                    ${home.input_rdfeedback} 
    Input Text                       ${home.textarea_sugestao}    Gostei da experiência

E adiciono um anexo
    [Documentation]    Esta palavra-chave será usada para testar o upload do arquivo  
    Choose File                     ${home.input_anexo}           ${home.caminho_arquivo}
    Element Should Not Be Visible   Nenhum ficheiro selecionado

E clico no botão enviar
    Click Element                   ${home.button_eviar} 

Então o formulário é enviado com sucesso
    Wait Until Element Is Visible   ${home.msg_sucesso}           3s

E seleciono o meio de contato preferencial telefone
    [Documentation]    Esta palavra-chave será usada para habilitar também a mensagem de obrigatório no telefone   
    Select Checkbox                 ${home.input_cktelefone}

Então verifico que a mensagem no campo "obrigatório" foi exibida
    Element Should Be Visible       ${home.alerta_obrigatorio}

Então valido que a mensagem de campos obrigatórios é exibida corretamente  
    [Documentation]    Esta palavra-chave será usada para testar a validação dos campos obrigatório (nome, sobrenome, email e sugestão)   
    Wait Until Element Is Visible   ${home.msg_erro}             3s

Quando clico em politica de privacidade   
    [Documentation]    Esta palavra-chave direciona para a página de politica de privacidade    
    Click Element                   ${home.button_politicaprv} 

Então valido que sou redirecionado para a página da politica de privacidade  
    Wait Until Element Is Visible  ${privacy.tit_privacidade}   3s

E preencho o campo email no formato incorreto
    [Documentation]    Esta palavra-chave é usada para validar que o campo e-mail tenha "@"    
    ${email}=    gera_somente_letras   10
    Input Text                       ${home.input_email}          ${email}

E limpo o campo
    [Arguments]    ${campo}
    Clear Element Text               ${home.${campo}}

Fechar navegador
    Close Browser