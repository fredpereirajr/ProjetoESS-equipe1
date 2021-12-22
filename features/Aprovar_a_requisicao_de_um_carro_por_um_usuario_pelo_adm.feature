Feature: Aprovar a requisição de um carro por um usuário pelo administrador
Como o 'administrador' do sistema de locadora
Eu quero liberar para o cliente a locação do carro escolhido

Cenário: Cliente retira o carro de forma bem sucedida
Dado que estou logado como ADM
E estou na página de solicitações
E o sistema possui uma solicitação com o status:'pendente'
Quando clico em aprovar
Então a solicitação de carro tem o status alterado para 'aprovada'
E o botão de aprovar desaparece

