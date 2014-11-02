class User < ActiveRecord::Base
  attr_accessible :email, :password, :session_token, :username

  validates_uniqueness_of :email, :username
  validates_presence_of :email, :username, :password_digest

  has_many :properties, as: :owner

  has_secure_password
end
