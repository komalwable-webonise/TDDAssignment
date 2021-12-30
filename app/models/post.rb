class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :comments
  validates :title, presence: true
  validates :title, length:{ minimum: 2, maximum: 10}
  validates :body, presence: true, length: {minimum: 10}
end
