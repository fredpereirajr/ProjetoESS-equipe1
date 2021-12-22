Feature: Login de cliente/administrador
Como o 'usuário' do sistema de locadora
Eu quero realizar meu login na plataforma

Cenário:Login(cliente) bem sucedido
Dado que estou na página inicial e clico em login
E o sistema tenha uma conta registrada com o email 'clinte@email.com' e senha 'S3nh4F0rt&@'
Quando eu preencho as credenciais de e-mail: 'clinte@email.com' e senha: 'S3nh4F0rt&@'
E submeto a requisição
Então surge uma opção para acesso à página inicial, botão home aparece

Cenário:Login(adm) bem sucedido
Dado que estou na página inicial e clico em login
E o sistema tenha uma conta registrada com o email 'adm@email.com' e senha 'S3nh4F0rt&'
Quando eu preencho as credenciais de e-mail: 'adm@email.com' e senha: 'S3nh4F0rt&'
E submeto a requisição
Então surge uma opção para acesso à página inicial, botão home aparece

Cenário:Login mal sucedido - e-mail ou senha inexistente 
Dado que o sistema não tenha uma conta registrada com o email 'email@email.com' e senha 'S3nH4B0@'
Quando eu preencho as credenciais de e-mail: 'email@email.com' e senha: 'S3nH4B0@'
E submeto a requisição
Então vejo o aviso de 'email ou senha inválidos' 
