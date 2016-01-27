class Place < ActiveRecord::Base
	  belongs_to :user
	  geocoded_by :address
  	  after_validation :geocode

	  validates :name, :presence => true, :length => { :minimum => 3 }
	  validates :description, :address, :presence => true

	  # no brackets or parenthesis needed on above line ^

	  has_many :comments #, :dependent => :destroy
	  has_many :photos
end

# :dependent => :destroy doesn't work
# would fix FUTURE crashes AFTER delting the placeless comment
# but NOT if the crash once it has occured
