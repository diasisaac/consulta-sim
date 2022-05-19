
Feature: Criar Medico
  As a administrador do sistema
  I want to adicionar, remover, mostrar, e atualizar um medico
  So that Eu nao tenho que fazer isso manualmente

  Scenario: criar medico corretamente
    Given eu estou na pagina de criar novo medico
    When  eu crio um medico de nome 'Paganini', cpf '68591237458', email 'pagalino@gmail.com', especialidade 'Neurologista' e crm 'lin33652'
    And eu clico em criar medico 
    Then eu vejo uma mensagem que informa que o medico foi criado com sucesso


  Scenario: criar medico com caracteres de crm menor que o permitido
    Given eu estou na pagina de criar novo medico
    When  eu crio um medico de nome 'Paganini', cpf '68591237458', email 'pagalino@gmail.com', especialidade 'Neurologista' e crm 'li'
    And eu clico em criar medico 
    Then eu vejo uma mensagem de erro que informa que os caracteres de crm sao pequenos