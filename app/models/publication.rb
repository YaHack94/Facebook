class Publication < ApplicationRecord
	belongs_to :user
	has_many :commentaires, :dependent => :delete_all
	mount_uploader :image, ImageUploader
	validates :content, length: { in: 1..255 }
end
