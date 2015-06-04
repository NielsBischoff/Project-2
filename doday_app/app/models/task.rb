class Task < ActiveRecord::Base
  has_many :taskusers
  has_many :users, through: :taskusers
end
