class AddAttachmentApartmentImgToApartments < ActiveRecord::Migration[5.1]  
  def self.up
    change_table :apartments do |t|
      t.attachment :apartment_img
      t.attachment :attachment_img1
      t.attachment :attachment_img2
      t.attachment :attachment_img3
    end
  end

  def self.down
    remove_attachment :apartments, :apartment_img, :attachment_img1, :attachment_img2, :attachment_img3
  end
end
