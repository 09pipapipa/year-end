class UsersController < ApplicationController
  def index
    @q = Item.ransack(params[:q])
    @items = @q.result
  end

  def show
    @user = User.find(params[:id])
    @q = @user.items.ransack(params[:q])  
    @items = @q.result
  end
end
