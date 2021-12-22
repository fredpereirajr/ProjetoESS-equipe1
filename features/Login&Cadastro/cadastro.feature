Feature: Cadastro de cliente e administrador
Como o 'usuário' do sistema de locadora
Eu quero realizar meu cadastro no sistema de locadora

  - Cenário: Cadastro de 'cliente' bem sucedido
  Dado que estou na página inicial e clico em cadastro
  E o sistema não tenha nenhum 'cliente' com email 'cliente@email.com'
  Quando eu me cadastro inserindo meu email: 'cliente@email.com', senha:'S3nh4F0rt&' e confirmação da senha: 'S3nh4F0rt&'
  E preencho senha e confirmação de senha válidas
  Então minha conta é registrada no sistema
  E vejo o alerta 'Cadastro realizado com sucesso'

  - Cenário: Senha inválida
  Dado que estou na página inicial e clico em cadastro
  E um 'usuário' tenta realizar um cadastro no sistema
  Quando informar uma senha que possua menos de 8 caracteres
  E tentar realizar o cadastro
  Então o cadastro não é aceito pelo sistema
  E a mensagem de erro: “Senha fraca” é repostada.

  - Cenário: Senhas não coincidem
  Dado que estou na página inicial e clico em cadastro
  E um 'usuário' tenta realizar um cadastro no sistema
  Quando informar senha e confirmação de senha que não coincidem
  E tentar realizar o cadastro
  Então o cadastro não é aceito pelo sistema
  E a mensagem de erro: “Senhas não coincidem” é reportada.

  - Cenário: Ausência de propriedades obrigatórias
  Dado que estou na página inicial e clico em cadastro
  E um 'usuário' tenta realizar um cadastro no sistema
  Quando preenche parte das credenciais
  E deixa algum campo obrigatório não preenchido
  Então o cadastro não é aceito pelo sistema
  E a mensagem de erro: “Todos os campos obrigatórios devem ser preenchidos” é reportada

  - Cenário: Cadastro de 'administrador' bem sucedido
  Dado que estou na página inicial e clico em cadastro
  E que sou um funcionário da locadora 
  E tenho uma credencial
  E estou na página de cadastro
  Quando eu preencho 'admin@email.com'
  E eu preencho o campo credencial com meu número de credencial:'1234'
  E eu preencho os campos de senha e confirmação de senha com 'S3nh4F0rt&'
  E não existe outro 'usuário' com email 'admin@email.com'
  E minha credencial é válida
  E eu tento realizar o cadastro
  Então o cadastro é realizado com sucesso no sistema
  E vejo o alerta 'Cadastro realizado com sucesso'
