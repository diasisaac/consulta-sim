require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test "Deve salvar uma consulta corretamente" do
    
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

    medico = Medico.new nome: 'Medico Teste',
                        cpf: '39775387485',
                        email: 'medicoteste@gmail.com',
                        especialidade: 'cardiologista',
                        crm: 'pe859621'
    assert medico.save

    consulta = Consultum.new data: '10-10-2022',
                          horario: '10:30',
                          medico_id: medico.id,
                          paciente_id: paciente.id

    assert consulta.save
    
  end

  test "Nao deve salvar uma consulta sem paciente" do
    
    medico = Medico.new nome: 'Medico Teste',
                        cpf: '39775387485',
                        email: 'medicoteste@gmail.com',
                        especialidade: 'cardiologista',
                        crm: 'pe859621'
    assert medico.save

    consulta = Consultum.new data: '10-10-2022',
                          horario: '10:30',
                          medico_id: medico.id


    assert_not consulta.save
    
  end

  test "Nao deve salvar uma consulta sem medico" do
    
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

    consulta = Consultum.new data: '10-10-2022',
                          horario: '10:30',
                          paciente_id: paciente.id

    assert_not consulta.save
    
  end

  test "Nao deve salvar uma consulta sem data" do
    
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

    medico = Medico.new nome: 'Medico Teste',
                        cpf: '39775387485',
                        email: 'medicoteste@gmail.com',
                        especialidade: 'cardiologista',
                        crm: 'pe859621'
    assert medico.save

    consulta = Consultum.new horario: '10:30',
                             medico_id: medico.id,
                             paciente_id: paciente.id

    assert_not consulta.save
    
  end
end
