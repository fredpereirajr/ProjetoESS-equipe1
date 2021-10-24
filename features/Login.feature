Feature: Login de cliente/administrador
Como o 'usuário' do sistema de locadora
Eu quero realizar meu login na plataforma

Cenário:Login bem sucedido
Dado que o sistema tenha uma conta registrada com o email 'email@email.com' e senha 'S3nH4B0@'
Quando eu preencho as credenciais de e-mail: 'email@email.com' e senha: 'S3nH4B0@'
E submeto a requisição
Então tenho acesso a página inicial

Cenário:Login mal sucedido - e-mail ou senha inexistente 
Dado que o sistema não tenha uma conta registrada com o email 'email@email.com' e senha 'S3nH4B0@'
Quando eu preencho as credenciais de e-mail: 'email@email.com' e senha: 'S3nH4B0@'
E submeto a requisição
Então vejo o aviso de 'email/senha incorreto' 
