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

  def delete
    @item = Item.find(params[:item])
    if @item.delete
      flash[:notice] = "You completed the task!"
      redirect to current_user
    else
      flash[:alert] = "There was an error in completing the task."
      redirect to current_user
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
