class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 10, maximum: 10000 }

  belongs_to :user
  has_many :comments
end
