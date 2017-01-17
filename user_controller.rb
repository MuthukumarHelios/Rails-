class UserController < ApplicationController

	def welcome
       @name='Hari'
	end
	def front
		@user = User.all
	end
	def update
		@user = User.find_by(id: params[:id])
		if @user.update(:name => params[:name])
        	redirect_to user_front_path
        else
        	render :action =>edit
        end
    end
    def edit
    	@user = User.find_by(id: params[:id])
    end
    

end
