class Micropost < ApplicationRecord
	belongs_to :user
	validates :context, length: {maximum: 10}, presence: true

end
