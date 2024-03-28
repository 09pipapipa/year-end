FactoryBot.define do
  factory :item do
    association :user

    product_name           { '商品名' }
    responsible_person     { '佐藤' }
    order_quantity         {200}
    sales_number           {100}
    year_id                {2}
    expansion_location_id  {2}
    weather_id             {2}
    expansion_method_id    {2}
    stock_out_id           {2}
    sales_day_id           {2}

    after(:build) do |item|
      item.image.attach(io: File.open('app/assets/images/image001.jpg'), filename: 'image001.jpg')
    end
  end
end
