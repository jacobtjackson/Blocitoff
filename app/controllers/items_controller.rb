class ItemsController < ApplicationController


  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user
    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to current_user
    else
      flash.now[:alert] = "Item could not be saved."
      redirect_to current_user
    end
  end
end
