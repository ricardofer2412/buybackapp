class AddImageToBuyBacks < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :image, :string
  end
end
