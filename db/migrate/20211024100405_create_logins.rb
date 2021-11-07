class CreateLogins < ActiveRecord::Migration[6.1]
  def change
    create_table :logins do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :ernnumber
      t.string :adjust_created_at

      t.timestamps
    end
  end
end
