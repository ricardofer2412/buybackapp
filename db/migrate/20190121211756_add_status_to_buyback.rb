class AddStatusToBuyback < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :status, :string
  end
end
