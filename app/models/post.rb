class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true,
            length: {maximum: 50}
  validates :description, presence: true
end
