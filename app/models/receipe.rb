class Receipe < ApplicationRecord
has_many :ingredients
has_many :pictures
has_many :comments
end
