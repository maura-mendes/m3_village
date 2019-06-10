class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :check_in_date, :check_out_date, :adult_guest, :children_guest , presence: true

  ADULT_GUESTS = [["1 Adult", 1],  ["2 Adults", 2], ["3 Adults", 3], ["4 Adults", 4]]
  CHILDREN_GUESTS = [["0 Children", 0], ["1 Child", 1], ["2 Children", 2], ["3 Children", 3], ["4 Children", 4]]
end

def guests
	adult_guest + children_guest
end