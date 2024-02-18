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
    validates :order_quantity , format: { with: /\A\d+\z/ }
    validates :sales_number, format: { with: /\A\d+\z/ }
    validates :year_id,               numericality: {other_than: 1}
    validates :expansion_location_id ,numericality: {other_than: 1}
    validates :weather_id,            numericality: {other_than: 1}
    validates :expansion_method_id,   numericality: {other_than: 1}
    validates :stock_out_id,          numericality: {other_than: 1}
    validates :sales_day_id,          numericality: {other_than: 1}
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "expansion_description", "expansion_location_id", "expansion_method_id", "id", "order_quantity", "product_name", "responsible_person", "sales_day_id", "sales_number", "stock_out_id", "updated_at", "user_id", "weather_id", "year_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user", "expansion_location", "expansion_method", "weather", "year", "stock_out", "sales_day"]
  end


end
