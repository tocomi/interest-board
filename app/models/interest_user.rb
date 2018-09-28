class InterestUser < ApplicationRecord
  belongs_to :interest
  belongs_to :user
  self.primary_keys = :interest_id, :user_id
end
