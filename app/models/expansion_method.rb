class  ExpansionMethod  < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'リカーキャリア'},
    { id: 3, name: 'カートラック'},
    { id: 4, name: 'カーゴ車'},
    { id: 5, name: 'スチールラック'},
  ]
  
  include ActiveHash::Associations
  has_many :items
end