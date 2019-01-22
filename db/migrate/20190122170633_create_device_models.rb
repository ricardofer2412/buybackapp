class CreateDeviceModels < ActiveRecord::Migration[5.1]
  def change
    create_table :device_models do |t|
      t.string :device_carrier
      t.string :device_model
      t.string :device_sale_price
      t.string :device_buy_back_price
      t.string :device_repair_price

      t.timestamps
    end
  end
end
