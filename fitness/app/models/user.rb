class User < ApplicationRecord
  has_many :posts
  validates :password, presence: true,
            length: {minimum: 8}
  validates :username, presence: true
end
