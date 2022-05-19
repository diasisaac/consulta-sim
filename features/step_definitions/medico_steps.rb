
Given('eu estou na pagina de criar novo medico') do
  # Write code here that turns the phrase above into concrete actions
  visit '/medicos/new'
  expect(page).to have_current_path('/medicos/new')
end

When('eu crio um medico de nome {string}, cpf {string}, email {string}, especialidade {string} e crm {string}') do |nome, cpf, email, especialidade, crm|
  fill_in 'medico[nome]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm

end

When('eu clico em criar medico') do
  click_button 'Create Medico'
end

Then('eu vejo uma mensagem que informa que o medico foi criado com sucesso') do
  expect(page).to have_content('Medico was successfully created.')
end

Then('eu vejo uma mensagem de erro que informa que os caracteres de crm sao pequenos') do
  expect(page).to have_content('Crm is too short (minimum is 6 characters)')
end
