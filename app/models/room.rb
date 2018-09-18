class Room < ApplicationRecord
	validates :name, presence: true, uniqueness: true	
	has_many :bookings
	has_many :room_attachments

end
