Feature: Aprovar a requisi��o de um carro por um usu�rio pelo administrador
Como o 'administrador' do sistema de locadora
Eu quero liberar para o cliente a loca��o do carro escolhido

Cen�rio: Cliente retira o carro de forma bem sucedida
Dado que O cliente solicitou a loca��o de um carro
E teve sua solicita��o aprovada
Quando o administrador aprova a retirada do carro
Ent�o o cliente pode retirar seu carro

Cen�rio:Cliente n�o retira o carro de forma bem sucedida
Dado que o cliente solicitou a loca��o de um carro
E informou sua forma de pagamento
E n�o teve sua transa��o aprovada
Quando o administrador n�o aprova a retirada do carro
Ent�o o cliente n�o poder� locar o carro
