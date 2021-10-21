class Commentaire < ApplicationRecord
	belongs_to :user
	belongs_to :publication
	validates :content, length: { in: 1..255 }
end
