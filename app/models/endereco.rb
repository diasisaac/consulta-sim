class Endereco < ApplicationRecord
  belongs_to :paciente

  validates :bairro, :cep, :complemento, :cidade, presence: true
  validates :bairro, presence: true, length: {minimum: 3, maximum: 50}
  validates :complemento, presence: true, length: {minimum: 2, maximum: 10}
  validates :cidade, presence: true, length: {minimum: 4, maximum: 20}
  validates :cep, presence: true, numericality: true, length:{minimum: 6, maximum: 11}

end
