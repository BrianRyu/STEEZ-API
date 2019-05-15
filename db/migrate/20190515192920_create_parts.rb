class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.integer :post_id
      t.integer :product_id

      t.timestamps
    end
  end
end
