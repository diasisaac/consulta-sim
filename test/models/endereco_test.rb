require "test_helper"

class EnderecoTest < ActiveSupport::TestCase
  test "Deve salvar um endereco corretamente" do
    
    
    paciente = Paciente.new nome: 'Paciente Teste',
                          data_nascimeto: '10-10-1980',
                          cpf: '11111111112',
                          email: 'pacienteteste@gmail.com',
                            endereco_attributes:{ cidade: 'Recife',
                                                logradouro: 'rua rosa',
                                                complemento: 'casa',
                                                bairro: 'Boa Viagem',
                                                cep: '55555555'}
    assert paciente.save
  end

  test "Nao deve salvar um endereco sem cep" do
    
    
    paciente = Paciente.new nome: 'Paciente Teste',
                          data_nascimeto: '10-10-1980',
                          cpf: '11111111112',
                          email: 'pacienteteste@gmail.com',
                            endereco_attributes:{ cidade: 'Recife',
                                                logradouro: 'rua rosa',
                                                complemento: 'casa',
                                                bairro: 'Boa Viagem',
                                                cep: ''}
    assert_not paciente.save
  end

  test "Nao deve salvar um endereco com bairro menor que 3 caracter" do
    
    
    paciente = Paciente.new nome: 'Paciente Teste',
                          data_nascimeto: '10-10-1980',
                          cpf: '11111111112',
                          email: 'pacienteteste@gmail.com',
                            endereco_attributes:{ cidade: 'Recife',
                                                logradouro: 'rua rosa',
                                                complemento: 'casa',
                                                bairro: 'B',
                                                cep: '55555555'}
    assert_not paciente.save
  end

  test "Nao deve salvar um endereco com sem o campo cidade" do
    
    
        paciente = Paciente.new nome: 'Paciente Teste',
                              data_nascimeto: '10-10-1980',
                              cpf: '11111111112',
                              email: 'pacienteteste@gmail.com',
                                endereco_attributes:{ cidade: '',
                                                    logradouro: 'rua rosa',
                                                    complemento: 'casa',
                                                    bairro: 'Bpa Viagem',
                                                    cep: '55555555'}
    assert_not paciente.save
  end

  
end
