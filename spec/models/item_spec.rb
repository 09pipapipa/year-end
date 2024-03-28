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
        expect(@item.errors.full_messages).to include("画像を入力してください")
      end
      it 'product_nameが空では登録できない' do
        @item.product_name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("商品名を入力してください")
      end
      it 'responsible_personが空では登録できない' do
        @item.responsible_person = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("担当者名を入力してください")
      end
      it 'order_quantityが空では登録できない' do
        @item.order_quantity =nil
        @item.valid?
        expect(@item.errors.full_messages).to include("発注数を入力してください")
      end
      it 'order_quantityは半角英字では登録できない' do
        @item.order_quantity = 'abc'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('発注数は不正な値です')
      end
      it 'order_quantityは全角英字では登録できない' do
        @item.order_quantity = 'ａｂｃ'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('発注数は不正な値です')
      end
      it 'order_quantityは全角数字では登録できない' do
        @item.order_quantity = '１２３'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('発注数は不正な値です')
      end
      it 'order_quantityは半角英数字混合では登録できない' do
        @item.order_quantity = 'abc12'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('発注数は不正な値です')
      end
      it 'sales_numberが空では登録できない' do
        @item.sales_number = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("販売数を入力してください")
      end
      it 'sales_numberは半角英字では登録できない' do
        @item.sales_number = 'abc'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('販売数は不正な値です')
      end
      it 'sales_numberは全角英字では登録できない' do
        @item.sales_number = 'ａｂｃ'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('販売数は不正な値です')
      end
      it 'sales_numberは半角英数字混合では登録できない' do
        @item.sales_number = 'abc12'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('販売数は不正な値です')
      end
      it 'sales_numberは全角数字では登録できない' do
        @item.sales_number = '１２３'
        @item.valid?
        expect(@item.errors.full_messages).not_to include('販売数は不正な値です')
      end
      it 'yearは1以外でないと登録できない' do
        @item.year_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('販売年は1以外を選択してください')
      end
      it 'expansion_locationは1以外でないと登録できない' do
        @item.expansion_location_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('展開場所は1以外を選択してください')
      end
      it 'weatherは1以外でないと登録できない' do
        @item.weather_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('天気は1以外を選択してください')
      end
      it 'expansion_methodは1以外でないと登録できない' do
        @item.expansion_method_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('展開方法は1以外を選択してください')
      end
      it 'stock_outは1以外でないと登録できない' do
        @item.stock_out_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('欠品の有無は1以外を選択してください')
      end
      it 'sales_dayは1以外でないと登録できない' do
        @item.sales_day_id = 1
        @item.valid?
        expect(@item.errors.full_messages).not_to include('特売期間は1以外を選択してください')
      end
      it 'userが紐づいていないと登録できない' do
        @item.user_id = nil
        @item.valid?
        expect(@item.errors.full_messages).not_to include("User must exist")
      end
    end
  end
end
