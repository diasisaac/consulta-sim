json.extract! paciente, :id, :nome, :data_nascimeto, :cpf, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
