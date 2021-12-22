Feature: Listagem de veículos
Como o 'usuário' do sistema de locadora
Eu quero visualizar os carros disponíveis para aluguel e suas respectivas quantidades

Cenário: Filtragem de veículos - usuário (cliente e admin)
Dado que eu estou na página 'Listagem de veículos' e logado como um usuário
E o sistema possui 1 veículo de modelo 'Fiat uno' registrado e disponível para aluguel
Quando eu preencho 'Hyundai HB20' 
Então uma mensagem é retornada informando que não existe nenhum veículo registrado no sistema.

Cenário: Filtragem de veículos - Cliente
Dado que eu estou na página 'Listagem de veículos' e logado como cliente
E o sistema possui 1 veículo de modelo 'Fiat uno' registrado e disponível para aluguel
Quando eu preencho 'Fiat uno' 
Então é visto 1 modelo  'Fiat uno' disponível para aluguel.

Cenário: Filtragem de veículos - Administrador 
Dado que eu estou na página 'Listagem de veículos' e logado como admin
E o sistema possui 1 veículo de modelo 'Fiat uno' registrado no sistema e alugado
Quando eu preencho 'Fiat uno' 
Então é visto 1 modelo 'Fiat uno' alugado.

Cenário: Listar carros - Cliente
Dado que eu estou na página 'Listagem de veículos' e logado como cliente
E o sistema possui 9 carros do modelo 'Fiat uno' disponíveis
E o sistema possui 6 carros do modelo 'Hyundai HB20' disponíveis
E o sistema possui 1 carro do modelo 'Ferrari Roma' disponível
E o sistema possui 7 carros do modelo 'Chevrolet Monza' disponíveis
Quando clico em buscar sem digitar nada no campo de texto a opção para listagem de carros
Então é exibido todos os modelos e suas quantidades diponíveis, juntamente com a opção de fazer ir para a página de solicitação

Cenário: Listar carros - Administrador 
Dado que eu estou na página 'Listagem de veículos' e logado como admin
Quando clico em buscar sem digitar nada no campo de texto a opção para listagem de carros
Então é mostrado cada carro registrado no sitema, exibindo seu modelo, diponibilidade e chassi
