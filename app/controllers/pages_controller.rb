class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :accommodation, :calculator, :contact_us, :gallery, :rooms_list]

  def home
  	@rooms = Room.all
  end

  def accommodation
    @room = Room.new
  	@rooms = Room.all
    @booking = Booking.new
  end

  def contact_us

   # @coordinates = Room::COORDINATES
   @markers = Room::COORDINATES
     
  
  

    # @markers = {lat: 38.720122, lng: -9.1666243,17}
    # function initMap() {
    #   var myLatLng = {lat: -25.363, lng: 131.044};

    #   var map = new google.maps.Map(document.getElementById('map'), {
    #     zoom: 4,
    #     center: myLatLng
    #   });

    #   var marker = new google.maps.Marker({
    #     position: myLatLng,
    #     map: map,
    #     title: 'Hello World!'
    #   });
    # }
  end

  def gallery
  end

  def rooms_list
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
