class AddImageToBuyBack < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :img, :string
  end
end
