class ContactsController < ApplicationController

	skip_before_action :authenticate_user!, only: [:new, :create]



	def new
		@contact = Contact.new
		 @markers = Room::COORDINATES
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send message'
			render :new
		end
	end

end
