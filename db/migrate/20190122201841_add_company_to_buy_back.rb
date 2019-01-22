class AddCompanyToBuyBack < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :company, :string
  end
end
