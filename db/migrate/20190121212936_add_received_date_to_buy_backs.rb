class AddReceivedDateToBuyBacks < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :received_date, :date
    add_column :buy_backs, :paid_date, :date
  end
end
