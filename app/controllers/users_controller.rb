class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @items = @user.items
    @item = @user.items.build()
  end
end
