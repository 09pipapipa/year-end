class  Year  < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '2023'},
    { id: 3, name: '2024'},
    { id: 4, name: '2025'},
    { id: 5, name: '2026'},
    { id: 6, name: '2027'},
    { id: 7, name: '2028'},
    { id: 8, name: '2029'},
  ]
  
  include ActiveHash::Associations
  has_many :items
end