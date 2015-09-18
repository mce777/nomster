class PlacesController < ApplicationController
	def index
		# @places is an instance variable telling model to list every record in db
		
		# backup: @places = Place.all
		@places = Place.paginate(:page => params[:page], :per_page => 5)
	end

	def new
		@place = Place.new
	end

  def create
    # the RESULT of the place_params goes below in the ()
    Place.create(place_params())
    redirect_to root_path
  end

  private

  def place_params
  	# "return" below is 'iplicit' says Travis
  	# so "return params.require...etc" would also be cool
    params.require(:place).permit(:name, :description, :address)
  end
end
