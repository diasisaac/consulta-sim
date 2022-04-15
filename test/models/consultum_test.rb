require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'nao deveria salve consulta sem atributos' do
    consulta = Consultum.new
    assert_not consulta.save
  end

  test 'deveria salvar consulta com atributos validos' do

    medico = Medico.new nome:"Fernando", email:"joao@gmail.com", cpf:"11111111111",especialidade:"Oftalmologista", crm:'erp8266'

    assert medico.save

    paciente = Paciente.new(nome:'Joao', email:'joao@gmail.com', data_nascimeto:'1997-01-01', cpf:'11111111111',:endereco_attributes => {logradouro: 'rua linda',complemento: 'casa', cep: '12345678',bairro:'boa vista', cidade: 'garanhuns'})

    assert paciente.save

    consulta = Consultum.new data:"2022-08-08", horario:"13:30", medico: medico, paciente: paciente

    assert consulta.save

  end

  test 'nao deveria salvar consulta com data invalida' do
    medico = Medico.new nome:"Fernando", email:"joao@gmail.com", cpf:"11111111111",especialidade:"Oftalmologista", crm:'erp8266'

    assert medico.save

    paciente = Paciente.new(nome:'Joao', email:'joao@gmail.com', data_nascimeto:'1997-01-01', cpf:'11111111111',:endereco_attributes => {logradouro: 'rua linda',complemento: 'casa', cep: '12345678',bairro:'boa vista', cidade: 'garanhuns'})

    assert paciente.save


    consulta = Consultum.new data:"2010-08-08", horario:"13:30", medico: medico, paciente: paciente


    assert_not consulta.save
  end


  test 'nao deveria salvar consulta sem horario' do

    medico = Medico.new nome:"Fernando", email:"joao@gmail.com", cpf:"11111111111",especialidade:"Oftalmologista", crm:'erp8266'

    assert medico.save

    paciente = Paciente.new(nome:'Joao', email:'joao@gmail.com', data_nascimeto:'1997-01-01', cpf:'11111111111',:endereco_attributes => {logradouro: 'rua linda',complemento: 'casa', cep: '12345678',bairro:'boa vista', cidade: 'garanhuns'})

    assert paciente.save

    consulta = Consultum.new data:"2022-08-08", medico: medico, paciente: paciente
    assert_not consulta.save

  end


end
