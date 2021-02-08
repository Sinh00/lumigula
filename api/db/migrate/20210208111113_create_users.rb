class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :lock_version, default: 0
      t.string :user_id, null: false
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :activated, null: false, default: false
      t.string :image_name
      t.string :image_path
      t.date :birth_day
      t.text :profile
      t.boolean :admin, null: false, default: false

      t.timestamps
    end
  end
end
