class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.date :data_nascimeto
      t.integer :cpf

      t.timestamps
    end
  end
end
