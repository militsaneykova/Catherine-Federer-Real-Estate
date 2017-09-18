class Apartment < ApplicationRecord
    belongs_to :user 
    has_attached_file :apartment_img, styles: { apartment_index: "250x350>", apartment_show: "350x400>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :apartment_img, content_type: /\Aimage\/.*\z/
end
