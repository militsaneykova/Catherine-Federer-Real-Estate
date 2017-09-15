class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :photo
      t.string :title
      t.text :address
      t.integer :bedrooms
      t.integer :bathrooms
      t.text :description
      t.integer :price
      t.integer :landlord_id

      t.timestamps
    end
    add_index :apartments, :landlord_id
  end
end


