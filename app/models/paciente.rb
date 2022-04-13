class Paciente < ApplicationRecord
  validates :nome, presence: true, numericality: false, uniqueness: false
  validates :cpf, presence: true , uniqueness: true,  length: {is: 11}
  validate :valida_data

  has_one :endereco
  has_many :consultums

  accepts_nested_attributes_for :endereco, allow_destroy: true

  def valida_data
    if  data_nascimeto.present? && data_nascimeto < Date.today
      errors.add(:data, " A data deve ser de hoje ou anterior")
    end
  end
end
