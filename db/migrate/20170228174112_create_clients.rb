class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :nom
      t.integer :age
      t.string :profession
      t.string :adresse
      t.integer :portable
      t.string :mail
      t.string :categorie
      t.string :nationalité

      t.timestamps
    end
  end
end
