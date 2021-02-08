class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :lock_version, default: 0      
      t.string :user_id, null: false
      t.string :title, null: false
      t.text :description
      t.string :picuture_name
      t.string :picuture_path, null: false

      t.timestamps
    end
  end
end
