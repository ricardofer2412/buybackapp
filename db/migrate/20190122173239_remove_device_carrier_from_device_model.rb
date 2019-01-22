class RemoveDeviceCarrierFromDeviceModel < ActiveRecord::Migration[5.1]
  def change
    remove_column :device_models, :device_carrier, :string
  end
end
