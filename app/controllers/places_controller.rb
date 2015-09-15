class PlacesController < ApplicationController
	def index
		# @places is an instance variable telling model to list every record in db
		@places = Place.all
	end
end
