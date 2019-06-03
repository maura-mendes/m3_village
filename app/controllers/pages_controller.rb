class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :accommodation, :calculator]

  def home
  	@rooms = Room.all
  end

  def accommodation
  	@rooms = Room.all
  end

  def calculator
  	
	  	@name1 = params[:name]
	  	if @name1 == ""
	  		@error_msg = "must enter your name!"
	  	end
	  	@email1 = params[:email]
	  	@product1 = params[:product1]
	  	@question = params[:question]
	  	@newsleter = params["newslater"] == "newsleter"
	  	gender = params[:gender]
	  	@male = gender == "male"
	  	@female = gender == "female"
	  	# form tag variables
	  	@name = params["Name"]
  		@email  = params[:email]
  		@age = params[:age]
  		@products = %w(Skiis Poles Mittens)
  		@selected_product = params[:product]
  		@salad = params[:food] == "salad"
  		@main = params[:food] == "main"
  		@desert = params[:food] == "desert"
  	
  	
  		



  end
end
