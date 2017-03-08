class Client < ApplicationRecord
  has_many :dossiers


  CATEG = ["Particulier", "Association", "Entreprise", "Libéral"]
  NATIONS = [["Française", "france"], ["Italienne", "italy"], ["Anglaise", "united-kingdom"], ["Américaine", "united-states-of-america"], ["Allemande","germany"], ["Espagnole", "spain"], ["Suisse", "switzerland"], ["Australienne", "australia"], ["Belge", "belgium"], ["Canadienne", "canada"], ["Des Îles Cocos","cocos-islands"], ["Danoise", "denmark"], ["Grècque","greece"], ["Japonaise", "japan"], ["Luxembourgeois", "luxembourg"], ["Monégasque", "monaco"], ["Norvégien", "norway"], ["Portugais", "portugal"], ["Russe", "russia"], ["Thaïlandais", "thailand"], ["Turque", "turkey"]]
end
