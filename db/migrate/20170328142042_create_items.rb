class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :content
      t.integer :position
      t.boolean :important
      t.boolean :archived

      t.timestamps
    end
  end
end
