class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :items

  
  validates :store_name, presence: true, length: { maximum: 10 }
  validates :store_no, presence: true, 
                     numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999 }
  validates :password,   presence: true, format: { with: /\A(?=.*[a-zA-Z])(?=.*\d)/ }, length: { minimum: 6 }

  def self.ransackable_attributes(auth_object = nil)
    ["product_name","year_id"]
  end
end
