class CreateBuyBacks < ActiveRecord::Migration[5.1]
  def change
    create_table :buy_backs do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.string :drive_license

      t.timestamps
    end
  end
end
