Feature: Cadastro de cliente e administrador
Como o 'usuário' do sistema de locadora
Eu quero realizar meu cadastro no sistema de locadora

  - Cenário: Cadastro de 'cliente' bem sucedido
  Dado que o sistema não tenha nenhum 'cliente' com email cliente@email.com'
  Quando eu me cadastro inserindo meu email: 'cliente@email.com', senha e confirmação da senha
  E preencho senha e confirmação de senha válidas
  Então minha conta é registrada no sistema

  - Cenário: Senha inválida
  Dado que um 'usuário' tenta realizar um cadastro no sistema
  Quando informar uma senha que possua menos de 8 caracteres, não possua números ou não possua letras maiúsculas e minúsculas
  E tentar realizar o cadastro
  Então o cadastro não é aceito pelo sistema
  E a mensagem de erro: “Senha incorreta” é repostada.

  - Cenário: Senhas não coincidem
  Dado que um 'usuário' tenta realizar um cadastro no sistema
  Quando informar senha e confirmação de senha que não coincidem
  E tentar realizar o cadastro
  Então o cadastro não é aceito pelo sistema
  E a mensagem de erro: “Senhas não coincidem” é reportada.

  - Cenário: Ausência de propriedades obrigatórias
  Dado que um 'usuário' tenta realizar um cadastro no sistema
  Quando preenche parte das credenciais
  E deixa algum campo obrigatório não preenchido
  Então o cadastro não é aceito pelo sistema
  E a mensagem de erro: “Todos os campos obrigatórios devem ser preenchidos” é reportada

  - Cenário: Cadastro de 'administrador' bem sucedido
  Dado que sou um usuário e estou logado em minha conta de administrador
  Quando eu tento cadastrar outro administrador no sistema com email 'admin@email.com'
  E eu preencho dados de senha, confirmação de senha válidas
  E não existe outro 'usuário' com email 'admin@email.com'
  E eu tento realizar o cadastro
  Então o cadastro é realizado no sistema
