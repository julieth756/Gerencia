class Product < ApplicationRecord
    has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }, :default_url => "/images/:style/missing.png"
    # Validate content type
    validates_attachment_content_type :image, content_type: /\Aimage/
    # Validate filename
    validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
    # Explicitly do not validate
    do_not_validate_attachment_file_type :image
end
