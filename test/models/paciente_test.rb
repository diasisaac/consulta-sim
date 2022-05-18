require "test_helper"

class PacienteTest < ActiveSupport::TestCase

  test "deve salvar Paciente corretamente" do

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

  test "nao deve salvar Paciente com campo nome vazio" do

    paciente = Paciente.new nome: '',
                            data_nascimeto: '10-10-1980',
                            cpf: '11111111112',
                            email: 'pacienteteste@gmail.com',
                            endereco_attributes:{ cidade: 'Recife',
                                                  logradouro: 'rua rosa',
                                                  complemento: 'casa',
                                                  bairro: 'Boa Viagem',
                                                  cep: '55555555'}
    assert_not paciente.save
  end

  test "nao deve salvar Paciente com campo data_nascimeto vazio" do

    paciente = Paciente.new nome: 'Paciente teste',
                            data_nascimeto: '',
                            cpf: '11111111112',
                            email: 'pacienteteste@gmail.com',
                            endereco_attributes:{ cidade: 'Recife',
                                                  logradouro: 'rua rosa',
                                                  complemento: 'casa',
                                                  bairro: 'Boa Viagem',
                                                  cep: '55555555'}
    assert_not paciente.save
  end

  test "nao deve salvar Paciente com campo email vazio" do

    paciente = Paciente.new nome: 'Paciente Teste',
                            data_nascimeto: '10-10-1980',
                            cpf: '11111111112',
                            email: '',
                            endereco_attributes:{ cidade: 'Recife',
                                                  logradouro: 'rua rosa',
                                                  complemento: 'casa',
                                                  bairro: 'Boa Viagem',
                                                  cep: '55555555'}
    assert_not paciente.save
  end
end
