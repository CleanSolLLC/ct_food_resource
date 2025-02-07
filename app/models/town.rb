class Town < ApplicationRecord
  belongs_to :county
  has_many :food_resources
end
