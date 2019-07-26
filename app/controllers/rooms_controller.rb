class RoomsController < ApplicationController
  	skip_before_action :authenticate_user!, only: [:index, :show]

  	def index

  		# @rooms = Room.all
  		@booking = Booking.new
  		# pry-byebug
  		 @bookings_params  = request.query_parameters[:booking]
   		 @check_in_date = Date.parse(@bookings_params[:check_in_date])
   		 @check_out_date = Date.parse(@bookings_params[:check_out_date])
   		 @adult_guest = @bookings_params[:adult_guest]
   		 @children_guest = @bookings_params[:children_guest]
       @nights = (@check_out_date - @check_in_date).to_i  
       session[:passed_variable] = @bookings_params


   		if params[:commit]
   		    @rooms = Room.search(params[:search]).order("created_at DESC")
   		else
   		    @rooms = Room.all.order('created_at DESC')
   		end

  	end

  	def show
     @new_params = session[:passed_variable] 
     
     @check_in_date = Date.parse(@new_params["check_in_date"])
     @check_out_date = Date.parse(@new_params["check_out_date"])
     @adult_guest = @new_params["adult_guest"]
     @children_guest = @new_params["children_guest"]
     @nights = (@check_out_date - @check_in_date).to_i  
     @total_guests = @adult_guest.to_i + @children_guest.to_i

      @booking = Booking.new
  		@room = Room.find(params[:id])
      @room_attachments = @room.room_attachments.all
      @more_rooms = Room.where(available: true).where.not(id: @room.id)
     
     
  	end

end
 


