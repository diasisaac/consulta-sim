require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'nao deveria salvar medicos sem atributos' do

    medico = Medico.new
    assert_not medico.save

  end


  test 'deveria salvar medico com atributos validos' do

    medico = Medico.new nome:"Fernando", email:"joao@gmail.com", cpf:"11111111111",especialidade:"Oftalmologista", crm:'erp8266'

    assert medico.save

  end

  test 'nao deveria salvar medico com cpf invalido' do
    medico = Medico.new nome:"Fernando", email:"joao@gmail.com", cpf:"11",especialidade:"Oftalmologista", crm:'erp8266'

    assert_not medico.save

  end

  test 'nao deveria salvar medico sem nome' do

    medico = Medico.new email:"joao@gmail.com", cpf:"11111111111",especialidade:"Oftalmologista", crm:'erp8266'
    assert_not medico.save

  end


end
