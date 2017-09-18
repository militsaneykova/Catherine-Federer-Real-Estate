class AddAttachmentApartmentImgToApartments < ActiveRecord::Migration[5.1]  
  def self.up
    change_table :apartments do |t|
      t.attachment :apartment_img
    end
  end

  def self.down
    remove_attachment :apartments, :apartment_img
  end
end
