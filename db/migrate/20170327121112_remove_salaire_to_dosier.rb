class RemoveSalaireToDosier < ActiveRecord::Migration[5.0]
  def change
    remove_column :dossiers, :salaire_client
    remove_column :dossiers, :salaire_adversaire
    remove_column :dossiers, :client_debiteur
    rename_column :dossiers, :type_garde, :regime
    add_column :dossiers, :revenu_parent_debiteur, :integer
    add_column :dossiers, :parent_debiteur, :integer
    add_column :dossiers, :pension_alimentaire, :integer
  end
end
