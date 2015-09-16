class PlacesController < ApplicationController
	def index
		# @places is an instance variable telling model to list every record in db
		
		# backup: @places = Place.all
		@places = Place.paginate(:page => params[:page], :per_page => 5)
	end

	def new
		@place = Place.new
	end
end
