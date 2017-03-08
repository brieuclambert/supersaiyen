class ChangeNameToClient < ActiveRecord::Migration[5.0]
  def change
    rename_column :clients, :nationalité, :nationalite
  end
end
