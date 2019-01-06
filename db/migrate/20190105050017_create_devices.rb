class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.integer :quantity
      t.string :carrier
      t.string :imei
      t.integer :price

      t.timestamps
    end
  end
end
