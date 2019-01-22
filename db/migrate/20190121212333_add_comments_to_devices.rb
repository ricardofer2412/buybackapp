class AddCommentsToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :comments, :text
  end
end
