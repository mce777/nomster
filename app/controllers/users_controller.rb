class UsersController < ApplicationController

  def show
    
    @user = User.find(params[:id])
  	@user.comments.each do |comment|
  		if comment.place.nil?
    	comment.destroy
    		next
    	end 
   	end # end loop
  end # end show

end # end class
