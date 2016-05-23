class AddTimeToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :time, :string
  end
end
