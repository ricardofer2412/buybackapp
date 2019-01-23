class AddPoNumberToBuyBacks < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :purchase_number, :string
    add_column :buy_backs, :customer_address, :text
  end
end
