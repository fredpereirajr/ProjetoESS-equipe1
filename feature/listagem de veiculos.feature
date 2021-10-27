Feature: Listagem de veículos
Como o 'usuário' do sistema de locadora
Eu quero visualizar os carros disponíveis para aluguel e suas respectivas quantidades

Cenário: Listar carros - usuário (cliente e admin)
Dado que eu estou na página 'Listagem de veículos' e logado como um usuário
E o sistema não possui nenhum veículo registrado
Quando seleciono a opção para listagem de carros
Então uma mensagem é retornada informando que não existe nenhum veículo registrado no sistema.

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
E o sistema possui 3 modelos 'Fiat uno', sendo 1 disponível para aluguel e 2 alugados.
E o sistema possui 2 modelos 'Hyundai HB20', sendo 1 disponível para aluguel e 1 alugado
Quando seleciono a opção para listagem de carros
Então é visto 1 modelo 'Fiat uno' e 1 modelo 'Hyundai HB20' disponíveis para aluguel

Cenário: Listar carros - Administrador 
Dado que eu estou na página 'Listagem de veículos' e logado como admin
E o sistema possui 3 modelos 'Fiat uno', sendo 1 disponível para aluguel e 2 alugados.
E o sistema possui 2 modelos 'Hyundai HB20', sendo 1 disponível para aluguel e 1 alugado
Quando seleciono a opção para listagem de veículos
Então é visto o que o modelo 'Fiat uno' possui 1 veículo disponível para aluguel e 2 alugados
E é visto que o modelo 'Hyundai HB20' possui 1 veículo disponível para aluguel e 1 alugado

Cenário: teste - roteiro 
Dado que ---
E ----
E ---
Quando ----
Então ----
E ----
