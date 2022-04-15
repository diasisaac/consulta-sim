
Feature: Medico
  As a administrador do sistema
  I want to adicionar, remover, mostrar, e atualizar um medico
  So that Eu nao tenho que fazer isso manualmente

  Scenario: criar um novo medico corretamente
    Given eu estou na pagina de criar novo medico
    When  eu crio um medico de nome 'Paganini' e cpf '68591237458' e email 'pagalino@gmail.com' e especialidade 'Neurologista' e crm 'lin33652'
    Then eu vejo que o medico foi salvo 'Paganini'


  Scenario: criar medico novo invalido
    When eu crio um medico de cpf '68591237058' e email 'paga@gmail.com' e especialidade 'Oftalmologista' e crm 'ado33652'
    Then eu vejo uma mensagem de erro de titulo invalido

