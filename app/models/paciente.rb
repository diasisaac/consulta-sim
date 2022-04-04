class Paciente < ApplicationRecord
  validates :nome, presence: true, numericality: false, uniqueness: false
  validates :cpf, presence: true , uniqueness: true,  length: {is: 11}
  validates :data_nascimeto, presence: true, numericality: true

  has_one :endereco
  has_many :consultums

  accepts_nested_attributes_for :endereco, allow_destroy: true
end
