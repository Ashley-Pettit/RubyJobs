class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
      t.string :name
      t.string :bio
      t.string :website

      t.timestamps null: false
    end
  end
end
