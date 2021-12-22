Feature: Solicitação de locação
Como o 'cliente' do sistema de locadora
Eu quero solicitar a locação de um carro
De forma que eu indique a data de retirada e data de devolução
	
Cenário: o cliente solicita a locação de um veículo
Dado que estou logado como cliente
E tenho acesso a listagem de veículos disponíveis para locação
E quero alugar um carro do modelo 'Ferrari Roma' que tem 1 veiculo disponível
E estou na página de solicitação de carro do modelo desejado
E informo a data que pretendo retirar:01/12/2022 e devolver:01/01/2023 o veículo
Quando o clico em 'solicitar' 
Então vejo um alerta com: 'Requisição bem sucedida'
E minha requisição de aluguel de carro foi mandada ao ADM

Cenário: Datas não informadas
Dado que o 'cliente' tem acesso a listagem de veículos disponíveis para locação
E escolhe um modelo de veículo que deseja locar
Quando tenta solicitar a locação de um veículo
E não informa a data de solicitação ou a data de devolução
Então o aluguel deve automaticamente bloqueado
E um erro apropriado deve ser reportado
E a solicitação não deve ser enviada para o 'administrador'

Cenário: Datas inválidas
Dado que estou logado como cliente
E tenho acesso a listagem de veículos disponíveis para locação
E quero alugar um carro do modelo 'Fiat UNO' que tem 1 veiculo disponível
E estou na página de solicitação de carro do modelo desejado
E informo a data que pretendo retirar:02/02/2022 e devolver:01/01/2022 o veículo
Quando o clico em 'solicitar' 
Então vejo um alerta com: 'Data inválida'
E minha requisição de aluguel de carro não foi mandada ao ADM
