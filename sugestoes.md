## Sugestões
1) Os cenários de testes foram criados sem definição de regra de negócio sendo assim todos os testes passaram pois a funcionalidade básica esta de acordo. Nesse caso sugiro algumas melhorias no formulário:

 1.1) Ao validar os campos obrigatórios, exibir uma mensagem mais especifica do campo que está vazio. Ao invés de "Valide os campos obrigatórios", exibir, "Valide o campo obrigatório Nome"

 1.2) Ao validar a formatação do campo email, exibir uma mensagem mais especifica de validar o formato do e-mail. Ao invés de "Valide os campos obrigatórios", exibir, "Informe um e-mail válido"

1.3) Para o campo de telefone, seria interessante que o campo já viesse com o formato esperado. Por exemplo (__) _____-____. Esse campo não está aceitando o hifen, porem ao validar, a mensagem de erro é a mesma para todos os outros campos. Ao invés de "Valide os campos obrigatórios", exibir, "Informe um telefone válido"
