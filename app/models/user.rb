class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  validates :store_name, presence: true
  validates :store_no,   presence: true, numericality: { only_integer: true, less_than_or_equal_to: 999 }
  validates :password,   presence: true, format: { with: /\A(?=.*[a-zA-Z])(?=.*\d)/}
end
