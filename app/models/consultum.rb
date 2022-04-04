class Consultum < ApplicationRecord
  belongs_to :medico
  belongs_to :paciente

  validates :data, :horario,presence: true
  validates_associated :medico
  validates_associated :paciente
end
