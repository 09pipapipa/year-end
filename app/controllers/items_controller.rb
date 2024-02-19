class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      @item.user.reload
      redirect_to root_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end
  private

  def item_params
    params.require(:item).permit(:image,:product_name,:responsible_person,:order_quantity,:year_id,:expansion_location_id,:weather_id,
                                  :expansion_method_id,:stock_out_id,:sales_day_id,:sales_number,:expansion_description).merge(user_id: current_user.id)
    
  end


end
