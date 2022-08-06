class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2}, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
