json.extract! buy_back, :id, :purchase_number, :customer_address, :received_date, :company, :first_name, :image, :middle_name, :last_name, :address, :address_two, :city, :state, :zip_code, :email, :drive_license, :created_at, :updated_at, device_attributes:[:id, :quantity, :device_name, :carrier, :imei, :price  :_destroy]
json.url buy_back_url(buy_back, format: :json)
