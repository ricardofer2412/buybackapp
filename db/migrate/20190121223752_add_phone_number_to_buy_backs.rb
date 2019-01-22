class AddPhoneNumberToBuyBacks < ActiveRecord::Migration[5.1]
  def change
      add_column :buy_backs, :phone_number, :string
  end
end
