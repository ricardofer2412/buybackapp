class AddBuyBackToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :buy_back_id, :integer
  end
end
