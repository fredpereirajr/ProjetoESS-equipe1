Feature: Aprovar a requisição de um carro por um usuário pelo administrador
Como o 'administrador' do sistema de locadora
Eu quero liberar para o cliente a locação do carro escolhido

Cenário: Cliente retira o carro de forma bem sucedida
Dado que O cliente solicitou a locação de um carro
E teve sua solicitação aprovada
Quando o administrador aprova a retirada do carro
Então o cliente pode retirar seu carro

Cenário:Cliente não retira o carro de forma bem sucedida
Dado que o cliente solicitou a locação de um carro
E informou sua forma de pagamento
E não teve sua transação aprovada
Quando o administrador não aprova a retirada do carro
Então o cliente não poderá locar o carro
