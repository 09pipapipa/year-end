class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached:image

  belongs_to :user
  belongs_to :expansion_location
  belongs_to :expansion_method
  belongs_to :weather
  belongs_to :year
  belongs_to :stock_out
  belongs_to :sales_day

  with_options presence: true do
    validates :image
    validates :product_name
    validates :responsible_person
    validates :order_quantity
    validates :sales_number
    validates :year_id,               numericality: {other_than: 1}
    validates :expansion_location_id ,numericality: {other_than: 1}
    validates :weather_id,            numericality: {other_than: 1}
    validates :expansion_method_id,   numericality: {other_than: 1}
    validates :stock_out_id,          numericality: {other_than: 1}
    validates :sales_day_id,          numericality: {other_than: 1}
  end


end
