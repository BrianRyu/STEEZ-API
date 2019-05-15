class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :name
      t.string :img_url
      t.integer :views
      t.integer :likes

      t.timestamps
    end
  end
end
