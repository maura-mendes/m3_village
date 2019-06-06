class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room

  ADULT_GUESTS = ["1 Adult", "2 Adults", "3 Adults", "4 Adults"]
  CHILDREN_GUESTS = ["0 Children", "1 Child", "2 Children", "3 Children", "4 Children"]
end
