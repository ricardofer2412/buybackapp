class AddTrackingNumberToBuyBacks < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :tracking_number, :string
  end
end
