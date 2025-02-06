class Comment < ApplicationRecord
  belongs_to :food_resource
  belongs_to :user
end
