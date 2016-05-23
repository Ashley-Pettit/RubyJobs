class AddYearsExpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :years_exp, :string
  end
end
