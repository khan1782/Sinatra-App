class User < ActiveRecord::Base

  has_many :meals
  has_many :list_items, through: :meals
  has_many :lists
  # Remember to create a migration!
end
