class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :expansion_location
  belongs_to :expansion_method
  belongs_to :weather
  belongs_to :year
  belongs_to :stock_out
  belongs_to :sales_number

  with_options presence: true do
    validates :responsible_person
    validates :order_quantity
    validates :year_id,               numericality: {other_than: 1}
    validates :expansion_location_id ,numericality: {other_than: 1}
    validates :weather_id,            numericality: {other_than: 1}
    validates :expansion_method_id,   numericality: {other_than: 1}
    validates :stock_out_id,          numericality: {other_than: 1}
    validates :sales_number_id,       numericality: {other_than: 1}
  end


end
