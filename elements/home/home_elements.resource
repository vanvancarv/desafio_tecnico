** Variables **
&{home}
#elementos de registro
...  input_nome=id:firstName
...  input_sobrenome=id:lastName
...  input_email=id:email
...  input_telefone=id:phone
...  select_produto=id:product
#elementos do suporte
...  input_tpatendimento=id:support-type
...  input_rdajuda=//input[@value="ajuda"]
...  input_rdelogio=//input[@value="elogio"]
...  input_rdfeedback=//input[@value="feedback"]
...  input_ckemail=id:email-checkbox
...  input_cktelefone=id:phone-checkbox
...  textarea_sugestao=id:open-text-area
#elementos do carregamento de arquivo
...  input_anexo=id:file-upload
...  caminho_arquivo=${CURDIR}/arquivos/01_print_site.png
...  button_eviar=//button[@type='submit' and @class='button']
#elementos da politica de cancelamento
...  button_politicaprv=id:privacy
#elementos de mensagem
...  msg_sucesso=class:success
...  msg_erro=class:error
...  alerta_obrigatorio=//span[@class="phone-label-span required-mark"]

