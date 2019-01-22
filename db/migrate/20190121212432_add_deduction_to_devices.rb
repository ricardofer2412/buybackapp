class AddDeductionToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :deduction, :string
  end
end
