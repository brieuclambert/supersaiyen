class AddProfitSubsToBien < ActiveRecord::Migration[5.0]
  def change
    add_column :biens, :profit_subs, :integer
  end
end
