class Room < ApplicationRecord
	validates :name, presence: true, uniqueness: true	
	has_many :bookings
	has_many :room_attachments
	accepts_nested_attributes_for :room_attachments
	# has_many :photos, through: :room_attachmens
end


def photos
    RoomAttachment.where(room: self)
end