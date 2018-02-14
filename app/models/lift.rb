class Lift < ApplicationRecord
  belongs_to :lift_type
  paginates_per 5
end
