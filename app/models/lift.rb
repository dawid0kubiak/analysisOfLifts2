class Lift < ApplicationRecord
  belongs_to :lift_type

  def self.for_user(user_id)
    where('user_id = ?', user_id)
  end
end
