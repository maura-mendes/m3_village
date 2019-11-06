class RoomsController < ApplicationController
  	skip_before_action :authenticate_user!, only: [:index, :show]

  	def index

  		# @rooms = Room.all
  		@booking = Booking.new
  		# pry-byebug
  		 @bookings_params  = request.query_parameters[:booking]
       @check_in_date = @bookings_params[:check_in_date]
       @check_out_date = @bookings_params[:check_out_date]
       @adult_guest = @bookings_params[:adult_guest]
       @children_guest = @bookings_params[:children_guest]

       if @check_in_date.present? 
         @check_in_date = Date.parse(@bookings_params[:check_in_date]) 
          # @check_out_date = Date.parse(@bookings_params[:check_out_date]) 
       else
         # @check_in_date = Date.today.strftime("%Y.%m.%d")
         @check_in_date = Date.today
         # @check_out_date = @check_in_date + 1
       end

        if @check_out_date.present?
          @check_out_date = Date.parse(@bookings_params[:check_out_date]) 
        else
          @check_out_date = @check_in_date + 1 
        end

   		  if @dult_guest.present? || @children_guest.present?
           @adult_guest = @bookings_params[:adult_guest]
           @children_guest = @bookings_params[:children_guest]
        else
          @adult_guest = 1
          @children_guest = 0
        end

        @nights = (@check_out_date - @check_in_date).to_i 
        @bookings_params = { "check_in_date" => @check_in_date, "check_out_date" => @check_out_date, "adult_guest" => @adult_guest, "children_guest" => @children_guest}
        session[:passed_variable] = @bookings_params


        

   		if params[:commit]
   		    @rooms = Room.search(params[:search]).order("created_at DESC")
   		else
   		    @rooms = Room.all.order('created_at DESC')
   		end

  	end

  	def show

     @new_params = session[:passed_variable] 
     # @check_in_date = Date.parse(@new_params["check_in_date"])
     # @check_out_date = Date.parse(@new_params["check_out_date"])
     # @adult_guest = @new_params["adult_guest"]
     # @children_guest = @new_params["children_guest"]
      if @check_in_date.present?
        @check_in_date = Date.parse(@new_params["check_in_date"])
      else
         @check_in_date = Date.today
      end

      if @check_out_date.present?
        @check_out_date = Date.parse(@new_params["check_out_date"])
      else
        @check_out_date = @check_in_date + 1 
      end

      if @dult_guest.present? || @children_guest.present?
       @adult_guest = @new_params["adult_guest"]
         @children_guest = @new_params["children_guest"]
      else
        @adult_guest = 1
        @children_guest = 0
      end

     @nights = (@check_out_date - @check_in_date).to_i  

     

      @booking = Booking.new
  		@room = Room.find(params[:id])
      @room_attachments = @room.room_attachments.all
      @more_rooms = Room.where(available: true).where.not(id: @room.id)
     
     
  	end

end
 


