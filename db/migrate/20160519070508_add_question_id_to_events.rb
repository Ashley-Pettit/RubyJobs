class AddQuestionIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :question_id, :string
  end
end
