class AddUserLikesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :user_likes, :string
  end
end
