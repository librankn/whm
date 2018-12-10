class Spot < ApplicationRecord
  validates :spot_name, presence: true
  validates :spot_location, presence: true
end
