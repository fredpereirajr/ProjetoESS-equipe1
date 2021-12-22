Feature: Registrar devolução do carro
Como o 'administrador' do sistema de locadora
Eu quero registrar a devolução do carro
De forma que eu registre o horário de devolução e, caso a entrega seja feita com atraso, uma multa seja aplicada automaticamente

Cenário: Registro de devolução no prazo
Dado que estou logado como ADM e estou na página de Registro de Devolução
E o sistema contèm uma requisição com status:'aprovado'
Quando eu informo a data de devolução
E clico em 'Registrar'
Então eu vejo o alerta: 'Devolução feita com sucesso'

Cenário: Registro de devolução fora do prazo
Dado que que o carro 'X' está registrado no sistema
E o carro 'X' está em situação de 'alugado' para o cliente 'W'
E o prazo para a entrega do carro 'X' expirou em Y unid.Tempo
Quando eu mudo a situação do carro 'X' para 'devolvido'
Então eu vejo o alerta: 'Devolução feita fora do prazo.'
E uma multa Z(Y) é aplicada ao cliente 'W'

Cenário: Registro de devolução de carro não registrado
Dado que que o carro 'X' não está registrado no sistema
Quando eu tento alterar a situação do carro 'X' para 'devolvido'
Então eu vejo o alerta de erro: 'Carro não registrado na base.'
E uma multa Z(Y) é aplicada ao cliente 'W'
