json.extract! device, :id, :created_at, :updated_at, :device_name, :carrier, :imei, :price, :quantity, buy_back_attributes:[:first_name, :middle_name, :last_name, :address, :address_two, :city, :state, :zip_code, :email, :image, :drive_license]
json.url device_url(device, format: :json)
