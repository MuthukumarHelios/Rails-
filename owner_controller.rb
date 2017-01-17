class OwnerController < ApplicationController

	def index
      @owner = Owner.all
	end

    def create
       @shop = Shop.create(:name =>params[:name], :address =>params[:address], :Phone =>params[:Phone], :owner_id =>params[:owner_id])
       redirect_to shop_show_path
    end
    
    def new
        @shop =Shop.all
    end
    def show
        @shop =Shop.all
    end
end
