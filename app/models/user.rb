class User < ApplicationRecord
  validates :email,uniqueness: true, presence: true
  validates :password, presence: true, length: {minimum: 10}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          :confirmable, :lockable, :trackable

  has_many :posts, dependent: :destroy
end
