class Paciente < ApplicationRecord
  validates :nome, presence: true, numericality: false, uniqueness: false
  validates :cpf, presence: true , uniqueness: true,  length: {is: 11}
  validates :data_nascimeto, presence: true
  validate :valida_data
  validates :email, presence: true, uniqueness: true , length: {minimum: 5}

  has_one :endereco, :dependent => :destroy
  has_many :consultums,:dependent => :destroy
  has_many :medicos, through: :consultums

  accepts_nested_attributes_for :endereco, allow_destroy: true

  def valida_data
    if  data_nascimeto.present? && data_nascimeto > Date.today
      errors.add(:data, " A data deve ser de hoje ou anterior")
    end
  end
end
