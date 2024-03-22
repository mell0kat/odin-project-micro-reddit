class User < ApplicationRecord
  validates :username, uniqueness: { case_senstive: false }, presence: true, length: { minimum: 8, maximum: 16 }

  has_many :posts
  has_many :comments
end
