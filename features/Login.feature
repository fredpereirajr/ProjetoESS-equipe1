Feature: Login de cliente/administrador
Como o 'usu�rio' do sistema de locadora
Eu quero realizar meu login na plataforma

Cen�rio:Login bem sucedido
Dado que o sistema tenha uma conta registrada com o email 'email@email.com' e senha 'S3nH4B0@'
Quando eu preencho as credenciais de e-mail: 'email@email.com' e senha: 'S3nH4B0@'
E submeto a requisi��o
Ent�o tenho acesso a p�gina inicial

Cen�rio:Login mal sucedido - e-mail ou senha inexistente 
Dado que o sistema n�o tenha uma conta registrada com o email 'email@email.com' e senha 'S3nH4B0@'
Quando eu preencho as credenciais de e-mail: 'email@email.com' e senha: 'S3nH4B0@'
E submeto a requisi��o
Ent�o vejo o aviso de 'email/senha incorreto' 
