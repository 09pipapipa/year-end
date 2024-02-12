class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string   :product_name          ,null:false
      t.string   :responsible_person    ,null:false
      t.integer  :order_quantity        ,null:false
      t.integer  :sales_number          ,null:false
      t.integer  :year_id               ,null:false
      t.string   :expansion_location_id ,null:false
      t.string   :weather_id            ,null:false
      t.string   :expansion_method_id   ,null:false
      t.string   :stock_out_id          ,null:false
      t.string   :sales_day_id          ,null:false
      t.text     :expansion_description
      t.timestamps
    end
  end
end
