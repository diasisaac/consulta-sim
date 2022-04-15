Given('eu estou na pagina de criar novo medico') do
  # Write code here that turns the phrase above into concrete actions
  visit '/medicos/new'
  expect(page).to have_current_path('/medicos/new')


end


When('eu crio um medico de nome {string} e cpf {string} e email {string} e especialidade {string} e crm {string}') do |nome, cpf, email, especialidade, crm|
  # Write code here that turns the phrase above into concrete actions
  fill_in 'medico[nome]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
  click_button 'Create Medico'

end

Then('eu vejo que o medico foi salvo {string}') do |string|
  # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content(string)
  expect(page).to have_current_path(medicos_path + '/' +
                                      Medico.last.id.to_s)
end


When('eu crio um medico de cpf {string} e email {string} e especialidade {string} e crm {string}') do |cpf, email, especialidade, crm|

  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
  click_button 'Create Medico'
end

Then('eu vejo uma mensagem de erro de titulo invalido') do
  assert_selector("Nome can't be blank")
end
