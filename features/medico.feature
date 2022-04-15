
Feature: Medico
  As a administrador do sistema
  I want to adicionar, remover, mostrar, e atualizar um medico
  So that Eu nao tenho que fazer isso manualmente

  Scenario: criar um novo paciente corretamente
    Given eu estou na pagina de medico
    When eu clico em criar medico
    And eu crio um medico de nome 'Vivaldi' e cpf '68591237458' e email 'vivaldilino@gmail.com' e especialidade 'Neurologista' e crm 'pe33652'
    Then eu vejo que o medico foi salvo

  Scenario: remover um medico existente
    Given estou na pagina de medico
    And o medico com crm 'pe33652' existe
    When eu clico remover o medico com crm 'pe33652'
    Then eu vejo uma mensagem que o medico com crm 'pe33652' foi removido

