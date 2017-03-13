class AddFieldsToDossier < ActiveRecord::Migration[5.0]
  def change
    add_column :dossiers, :salaire_adversaire, :integer
    add_column :dossiers, :salaire_client, :integer
    add_column :dossiers, :client_debiteur, :boolean
    add_column :dossiers, :nb_enfant_a_charge, :integer
    add_column :dossiers, :type_garde, :string
  end
end
