class Post < ApplicationRecord
    has_attached_file :image 
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :title, presence: true,
                    length: { minimum: 5 }
end
