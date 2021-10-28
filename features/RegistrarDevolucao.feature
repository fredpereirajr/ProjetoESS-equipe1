Feature: Registrar devolu��o do carro
Como o 'administrador' do sistema de locadora
Eu quero registrar a devolu��o do carro
De forma que eu registre o hor�rio de devolu��o e, caso a entrega seja feita com atraso, uma multa seja aplicada automaticamente

Cen�rio: Registro de devolu��o no prazo
Dado que que o carro 'X' est� registrado no sistema
E o carro 'X' est� em situa��o de 'alugado' para o cliente 'W'
E o prazo para a entrega do carro 'X' ainda n�o expirou
Quando eu mudo a situa��o do carro 'X' para 'devolvido'
Ent�o eu vejo o alerta: 'Devolu��o feita no prazo.'

Cen�rio: Registro de devolu��o fora do prazo
Dado que que o carro 'X' est� registrado no sistema
E o carro 'X' est� em situa��o de 'alugado' para o cliente 'W'
E o prazo para a entrega do carro 'X' expirou em Y unid.Tempo
Quando eu mudo a situa��o do carro 'X' para 'devolvido'
Ent�o eu vejo o alerta: 'Devolu��o feita fora do prazo.'
E uma multa Z(Y) � aplicada ao cliente 'W'

Cen�rio: Registro de devolu��o de carro n�o registrado
Dado que que o carro 'X' n�o est� registrado no sistema
Quando eu tento alterar a situa��o do carro 'X' para 'devolvido'
Ent�o eu vejo o alerta de erro: 'Carro n�o registrado na base.'
E uma multa Z(Y) � aplicada ao cliente 'W'
