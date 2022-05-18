require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "deve salvar Medico corretamente" do
    medico = Medico.new nome: 'Medico Teste',
                        cpf: '39775387485',
                        email: 'medicoteste@gmail.com',
                        especialidade: 'cardiologista',
                        crm: 'pe859621'
    assert medico.save
  end


  test "nao deve salvar Medico com campo email vazio" do
    medico = Medico.new nome: 'Medico Teste',
                        cpf: '39775387485',
                        email: '',
                        especialidade: 'cardiologista',
                        crm: 'pe859621'

    assert_not medico.save
  end

  test "nao deve salvar Medico com campo cpf vazio" do
    medico = Medico.new nome: 'Medico Teste',
                        cpf: '',
                        email: 'medicoteste@gmail.com',
                        especialidade: 'cardiologista',
                        crm: 'pe859621'

    assert_not medico.save
  end

  test "nao deve salvar Medico com campo nome vazio" do
    medico = Medico.new nome: '',
                        cpf: '39775387485',
                        email: 'medicoteste@gmail.com',
                        especialidade: 'cardiologista',
                        crm: 'pe859621'

    assert_not medico.save
  end



end
