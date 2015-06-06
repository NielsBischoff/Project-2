class Goal < ActiveRecord::Base
  has_many :users
  has_many :tasks
  belongs_to :user
end
