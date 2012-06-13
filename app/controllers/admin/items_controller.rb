class Admin::ItemsController < ApplicationController
	def index
		@items = Item.order('id desc')
	end

    def show
    	@item = Item.find(params[:id])
    end
    
	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params[:item])
		if @item.save
			redirect_to admin_items_path
		else
			render action: 'new'
		end
	end

	def edit
	  @item = Item.find(params[:id])
	end

	def update
	   @item = Item.find(params[:id])
	   if @item.update_attributes(params[:item])
	   	  redirect_to admin_items_path
     	else
     		render action 'edit'
	   	end
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to admin_items_path
	end
end
