require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品新規登録' do
    context '商品新規登録ができる場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@item).to be_valid
      end
    end

    context '商品新規登録ができない場合' do
      it 'imageが空では登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'product_nameが空では登録できない' do
        @item.product_name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Product name can't be blank")
      end
      it 'responsible_personが空では登録できない' do
        @item.responsible_person = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Responsible person can't be blank")
      end
      it 'order_quantityが空では登録できない' do
        @item.order_quantity =nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Order quantity can't be blank")
      end
      it 'order_quantityは半角英字では登録できない' do
        @item.order_quantity = 'abc'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Order quantity is not a number')
      end
      it 'order_quantityは全角英字では登録できない' do
        @item.order_quantity = 'ａｂｃ'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Order quantity is not a number')
      end
      it 'order_quantityは全角数字では登録できない' do
        @item.order_quantity = '１２３'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Order quantity is not a number')
      end
      it 'order_quantityは半角英数字混合では登録できない' do
        @item.order_quantity = 'abc12'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Order quantity is not a number')
      end
      it 'sales_numberが空では登録できない' do
        @item.sales_number = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Sales number can't be blank")
      end
      it 'sales_numberは半角英字では登録できない' do
        @item.sales_number = 'abc'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Sales number is not a number')
      end
      it 'sales_numberは全角英字では登録できない' do
        @item.sales_number = 'ａｂｃ'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Sales number is not a number')
      end
      it 'sales_numberは半角英数字混合では登録できない' do
        @item.sales_number = 'abc12'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Sales number is not a number')
      end
      it 'sales_numberは全角数字では登録できない' do
        @item.sales_number = '１２３'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Sales number is not a number')
      end
      it 'yearは1以外でないと登録できない' do
        @item.year_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Year must be greater than or equal to 2')
      end
      it 'expansion_locationは1以外でないと登録できない' do
        @item.expansion_location_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Expansion location must be greater than or equal to 2')
      end
      it 'weatherは1以外でないと登録できない' do
        @item.weather_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Weather must be greater than or equal to 2')
      end
      it 'expansion_methodは1以外でないと登録できない' do
        @item.expansion_method_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Expansion method must be greater than or equal to 2')
      end
      it 'stock_outは1以外でないと登録できない' do
        @item.stock_out_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Stock out must be greater than or equal to 2')
      end
      it 'sales_dayは1以外でないと登録できない' do
        @item.sales_day_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('Sales day must be greater than or equal to 2')
      end
      it 'userが紐づいていないと登録できない' do
        @item.user_id = nil
        @item.valid?
        expect(@item.errors.full_messages).not_to include("User must exist")
      end
    end
  end
end
