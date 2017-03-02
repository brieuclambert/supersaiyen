class CreateDossiers < ActiveRecord::Migration[5.0]
  def change
    create_table :dossiers do |t|
      t.references :client, foreign_key: true
      t.string :categorie
      t.string :nom
      t.string :adversaire
      t.string :juridiction

      t.timestamps
    end
  end
end
