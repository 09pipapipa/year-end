class ExpansionLocation   < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '入口'},
    { id: 3, name: '2番通路'},
    { id: 4, name: '3番通路'},
    { id: 5, name: '4番通路'},
    { id: 6, name: '5番通路'},
    { id: 7, name: '6番通路'},
    { id: 8, name: '7番通路'},
    { id: 9, name: '8番通路'},
    { id: 10, name: '9番通路'},
    { id: 11, name: '10番通路'},
    { id: 12, name: '11番通路'},
    { id: 13, name: 'その他'},
  ]
  
  include ActiveHash::Associations
  has_many :items
end