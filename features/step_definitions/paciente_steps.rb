
Given('eu estou na pagina de criar novo paciente') do
  visit '/pacientes/new'
  expect(page).to have_current_path('/pacientes/new')
end

When('eu crio um paciente de nome: {string}, data_nascimeto: {string}, cpf: {string}, email: {string}, cidade: {string},logradouro: {string},complemento: {string},bairro: {string},cep: {string}') do |nome, data_nascimeto, cpf, email, cidade, logradouro, complemento, bairro, cep|
 fill_in 'paciente[nome]', :with => nome
 fill_in 'paciente[data_nascimeto]', :with => data_nascimeto
 fill_in 'paciente[cpf]', :with => cpf
 fill_in 'paciente[email]', :with => email
 fill_in 'paciente_endereco_attributes_cidade', :with => cidade
 fill_in 'paciente_endereco_attributes_logradouro', :with => logradouro
 fill_in 'paciente_endereco_attributes_complemento', :with => complemento
 fill_in 'paciente_endereco_attributes_bairro', :with => bairro
 fill_in 'paciente_endereco_attributes_cep', :with => cep

end

When('eu clico em criar paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo uma mensagem que informa que o paciente foi criado com sucesso') do
  expect(page).to have_content('Paciente was successfully created.')
end

Then('eu vejo uma mensagem que informa que o cpf do paciente e menor que o permitido') do
  expect(page).to have_content('Cpf is the wrong length (should be 11 characters)')
end
