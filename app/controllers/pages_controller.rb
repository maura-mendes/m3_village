class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :accommodation]

  def home
  	@rooms = Room.all
  end

  def accommodation
  
  end
end
