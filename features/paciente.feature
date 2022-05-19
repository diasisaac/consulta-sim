
Feature: Criar Paciente
  As a administrador do sistema
  I want to adicionar, remover, mostrar, e atualizar um paciente
  So that Eu nao tenho que fazer isso manualmente

  Scenario: criar paciente corretamente
    Given eu estou na pagina de criar novo paciente
    When eu crio um paciente de nome: 'Paciente teste', data_nascimeto: '10-10-1980', cpf: '11111111112', email: 'pacienteteste@gmail.com', cidade: 'Recife',logradouro: 'rua rosa',complemento: 'casa',bairro: 'Boa Viagem',cep: '55555555'
    And eu clico em criar paciente
    Then eu vejo uma mensagem que informa que o paciente foi criado com sucesso

  Scenario: criar paciente com cpf menor que o permitido
    Given eu estou na pagina de criar novo paciente
    When eu crio um paciente de nome: 'Paciente teste', data_nascimeto: '10-10-1980', cpf: '11', email: 'pacienteteste@gmail.com', cidade: 'Recife',logradouro: 'rua rosa',complemento: 'casa',bairro: 'Boa Viagem',cep: '55555555'
    And eu clico em criar paciente
    Then eu vejo uma mensagem que informa que o cpf do paciente e menor que o permitido