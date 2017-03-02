class CreateBiens < ActiveRecord::Migration[5.0]
  def change
    create_table :biens do |t|
      t.references :client, foreign_key: true
      t.integer :valeur_empr
      t.integer :valeur_act
      t.integer :prix_acq
      t.string :nom
      t.string :localisation

      t.timestamps
    end
  end
end
