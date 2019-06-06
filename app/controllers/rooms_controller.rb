class RoomsController < ApplicationController
  	skip_before_action :authenticate_user!, only: [:index, :show]

  	def index

  		# @rooms = Room.all
  		@booking = Booking.new
  		# pry-byebug
  		@params_hash = request.query_parameters[:booking]
   		 @bookings_params = @params_hash
   		 @check_in_date = @bookings_params[:check_in_date]
   		 @check_out_date = @bookings_params[:check_out_date]
   		 @adult_guest = @bookings_params[:adult_guest]
   		 @children_guest = @bookings_params[:children_guest]
   		if params[:commit]
   		    @rooms = Room.search(params[:search]).order("created_at DESC")
   		else
   		    @rooms = Room.all.order('created_at DESC')
   		end

  	end

  	def show
  		@room = Room.find(params[:id])
  	end

end
 


