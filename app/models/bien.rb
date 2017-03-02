class Bien < ApplicationRecord
  belongs_to :client
  validates :valeur_empr, :valeur_act, :prix_acq, :profit_subs, presence: true, numericality: true
  validates :nom, presence: true
end
