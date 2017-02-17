class List < ActiveRecord::Base

  belongs_to :user
  has_many :ingredients, through: :list_items
  has_many :meals_lists
  has_many :meals, through: :meals_lists
  has_many :list_items, through: :meals

end
