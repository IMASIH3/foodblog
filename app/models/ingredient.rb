class Ingredient < ApplicationRecord
has_many :pictures
belongs_to :recipes
end
