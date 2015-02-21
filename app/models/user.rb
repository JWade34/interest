class User < ActiveRecord::Base
  has_many :pins
  has_secure_password



  validates :name, presence: true, uniqueness: true
  validates :email, presence: true
  validates :password, confirmation: true

end
