class  Weather  < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '晴れ'},
    { id: 3, name: '雨'},
    { id: 4, name: '曇り'},
    { id: 5, name: '晴れのち雨'},
    { id: 6, name: '雨のち晴'},
    { id: 7, name: '強風あり'},
    { id: 8, name: '雪'},
  ]
  
  include ActiveHash::Associations
  has_many :items
end