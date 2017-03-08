class Client < ApplicationRecord
  has_many :dossiers

  validates :nom, :prenom, :profession, format: { with: /\A[a-zA-Z]+\z/,
    message: "Uniquement des lettres" }
  validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "Merci d'entrer un email valide" }
  CATEG = ["Particulier", "Association", "Entreprise", "Libéral"]
  NATIONS = [["Française", "france"], ["Italienne", "italy"], ["Anglaise", "united-kingdom"], ["Américaine", "united-states-of-america"], ["Allemande","germany"], ["Espagnole", "spain"], ["Suisse", "switzerland"], ["Australienne", "australia"], ["Belge", "belgium"], ["Canadienne", "canada"], ["Des Îles Cocos","cocos-islands"], ["Danoise", "denmark"], ["Grècque","greece"], ["Japonaise", "japan"], ["Luxembourgeois", "luxembourg"], ["Monégasque", "monaco"], ["Norvégien", "norway"], ["Portugais", "portugal"], ["Russe", "russia"], ["Thaïlandais", "thailand"], ["Turque", "turkey"]]
end
