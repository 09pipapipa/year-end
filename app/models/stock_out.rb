class  StockOut  < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '欠'},
    { id: 3, name: '無'},

  ]
  
  include ActiveHash::Associations
  has_many :items
end