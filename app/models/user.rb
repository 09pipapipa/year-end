class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :items

  
  validates :store_name, presence: true, length: { maximum: 10 }
  validates :store_no,   presence: true, numericality: { only_integer: true }, length: { is: 3 }
  validates :password,   presence: true, format: { with: /\A(?=.*[a-zA-Z])(?=.*\d)/ }, length: { minimum: 6 }
end
