class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :check_in_date, :check_out_date, :adult_guest, :children_guest , presence: true

  ADULT_GUESTS = ["1 Adult", "2 Adults", "3 Adults", "4 Adults"]
  CHILDREN_GUESTS = ["0 Children", "1 Child", "2 Children", "3 Children", "4 Children"]
end
