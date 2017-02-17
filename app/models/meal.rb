class Meal < ActiveRecord::Base

 belongs_to :user
 has_many :list_items
 has_many :ingredients, through: :list_items


end
