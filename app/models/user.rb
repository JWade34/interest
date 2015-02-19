class User < ActiveRecord::Base

  has_secure_password

  has_many :pins

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true
  validates :password, confirmation: true

end
