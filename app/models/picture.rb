class Picture < ApplicationRecord
  belongs_to :location, required: false
  belongs_to :user
end
