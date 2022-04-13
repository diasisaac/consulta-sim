class Consultum < ApplicationRecord
  belongs_to :medico
  belongs_to :paciente

  validates :data, :horario,presence: true
  validate :valida_data
  validates_associated :medico
  validates_associated :paciente

  def valida_data
    if data.present? && data < Date.today
      errors.add(:data, " A data deve ser de hoje ou futura")
    end
  end
end
