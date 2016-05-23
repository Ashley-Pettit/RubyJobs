class AddUserLikesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_likes, :string
  end
end
