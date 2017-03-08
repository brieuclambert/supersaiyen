class AddPrenomToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :prenom, :string
    add_column :clients, :date_de_naissance, :date
    add_column :clients, :genre, :string
    remove_column :clients, :age
    change_column :clients, :portable, :string
  end
end
