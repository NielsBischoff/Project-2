class Task < ActiveRecord::Base
  # has_many :taskusers
  has_many :users
  belongs_to :goal
end
