class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :title
      t.text :address
      t.text :neighborhood
      t.integer :bedrooms
      t.integer :bathrooms
      t.text :description
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
    add_index :apartments, :user_id
  end
end


