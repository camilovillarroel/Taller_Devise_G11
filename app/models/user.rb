class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true

  has_many :histories
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
