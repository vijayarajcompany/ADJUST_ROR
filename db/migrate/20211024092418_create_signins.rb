class CreateSignins < ActiveRecord::Migration[6.1]
  def change
    create_table :signins do |t|
      t.integer :user_id
      t.string :eventtoken
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :ernnumber
      t.string :adjust_created_at

      t.timestamps
    end
  end
end
