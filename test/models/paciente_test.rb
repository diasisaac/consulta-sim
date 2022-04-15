require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test 'nao deveria criar pacientes sem atributos' do

    paciente = Paciente.new
    assert_not paciente.save

  end


  test 'deveria salvar paciente com atributos validos' do
    paciente = Paciente.new(nome:'Joao', email:'joao@gmail.com', data_nascimeto:'1997-01-01', cpf:'11111111111',:endereco_attributes => {logradouro: 'rua linda',complemento: 'casa', cep: '12345678',bairro:'boa vista', cidade: 'garanhuns'})
    assert paciente.save

  end


  test 'nao deveria salvar paciente com cpf invalido' do
    paciente = Paciente.new(nome:'Joao', email:'joao@gmail.com', data_nascimeto:'1997-01-01', cpf:'11',:endereco_attributes => {logradouro: 'rua linda',complemento: 'casa', cep: '12345678',bairro:'boa vista', cidade: 'garanhuns'})
    assert_not paciente.save

  end

  test 'nao salvar paciente com data_nascimento invalida' do


    paciente = Paciente.new(nome:'Joao', email:'joao@gmail.com', data_nascimeto:'2050-01-01', cpf:'11111111111',:endereco_attributes => {logradouro: 'rua linda',complemento: 'casa', cep: '12345678',bairro:'boa vista', cidade: 'garanhuns'})
    assert_not paciente.save

  end

end