class Dossier < ApplicationRecord
  belongs_to :client
  DEBIT = ["Client", "Conjoint"]
  REGIME = ["Classique", "Alterné", "Réduit"]
end
