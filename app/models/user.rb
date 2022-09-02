class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2}, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  # Option 1: Purely overriding the #as_json method
  # def as_json(options={})
  #   { :name => self.name } # NOT including the email field
  # end

  # Option 2: Working with the default #as_json method
  # def as_json(options={})
  #   super(:only => [:name])
  # end


end
