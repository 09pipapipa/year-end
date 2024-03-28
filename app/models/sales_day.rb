class  SalesDay  < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '28日'},
    { id: 3, name: '29日'},
    { id: 4, name: '30日'},
    { id: 5, name: '31日'},
    { id: 6, name: '25日~31日'},
    { id: 7, name: '26日~31日'},
    { id: 8, name: '27日~31日'},
    { id: 9, name: '28日~31日'},
  ]
  
  include ActiveHash::Associations
  has_many :items
end