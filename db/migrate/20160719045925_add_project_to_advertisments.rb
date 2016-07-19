class AddProjectToAdvertisments < ActiveRecord::Migration
  def change
    add_column :advertisments, :project, :text
  end
end
