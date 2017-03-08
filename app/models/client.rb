class Client < ApplicationRecord
  has_many :dossiers
  validates :nom, :prenom, :profession, format: { with: /\A[a-zA-Z]+\z/,
    message: "Uniquement des lettres" }
  validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "Merci d'entrer un email valide" }
end
