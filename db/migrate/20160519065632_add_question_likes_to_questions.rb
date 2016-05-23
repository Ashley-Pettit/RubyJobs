class AddQuestionLikesToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :question_likes, :string
  end
end
