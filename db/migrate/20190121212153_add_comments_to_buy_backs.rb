class AddCommentsToBuyBacks < ActiveRecord::Migration[5.1]
  def change
    add_column :buy_backs, :comments, :text
  end
end
