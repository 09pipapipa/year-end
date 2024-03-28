class UsersController < ApplicationController
  def index
    @q = Item.ransack(params[:q])
    @items = @q.result
  end

  def show
    if params[:q]&.dig(:product_name)
      squished_keywords =params[:q][:product_name].squish
      params[:q][:product_name_cont_any] = squished_keywords.split(" ")
    end
    @user = User.find(params[:id])
    @q = @user.items.ransack(params[:q])  
    @items = @q.result
  end
end
