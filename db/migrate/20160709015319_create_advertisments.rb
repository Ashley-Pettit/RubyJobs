class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :job_title

      t.timestamps null: false
    end
  end
end
