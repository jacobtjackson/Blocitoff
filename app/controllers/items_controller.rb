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

  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "You completed the task!"
    else
      flash[:alert] = "There was an error in completing the task."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
