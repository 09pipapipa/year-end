class UsersController < ApplicationController
  def index
    @q = Item.ransack(params[:q])
    @items = @q.result
  end

  def show
    @user = User.find(params[:id])
    @items = @user.items
    @q = Item.ransack(params[:q])
  end
end
