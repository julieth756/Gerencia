class Product < ApplicationRecord
    has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
