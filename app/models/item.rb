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
    validates :year_id,               numericality: {other_than: 1, message: "を選択してください"}
    validates :expansion_location_id ,numericality: {other_than: 1, message: "を選択してください"}
    validates :weather_id,            numericality: {other_than: 1, message: "を選択してください"}
    validates :expansion_method_id,   numericality: {other_than: 1, message: "を選択してください"}
    validates :stock_out_id,          numericality: {other_than: 1, message: "を選択してください"}
    validates :sales_day_id,          numericality: {other_than: 1, message: "を選択してください"}
  end

  def self.ransackable_attributes(auth_object = nil)
    [ "product_name","year_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user", "expansion_location", "expansion_method", "weather", "year", "stock_out", "sales_day"]
  end


end
