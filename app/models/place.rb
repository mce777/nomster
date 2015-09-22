class Place < ActiveRecord::Base
	  belongs_to :user
	  geocoded_by :address
  	  after_validation :geocode

	  validates :name, :presence => true, :length => { :minimum => 3 }
	  validates :description, :address, :presence => true
	  
	  # no brackets or parenthesis needed on above line (fucks shit up)
	  # check out 'sexy validation' in lesson 28 maybe

	  has_many :comments
	  has_many :photos
end

