class AddQuestionsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :questions, :string
  end
end
