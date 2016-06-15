class LikesToInteger < ActiveRecord::Migration
  def change
    remove_column :questions, :question_likes, :string
    add_column :questions, :question_likes, :integer
  end
end
