class User < ActiveRecord::Base
  has_secure_password
  has_many :taskusers
  has_many :tasks, through: :taskusers
end
