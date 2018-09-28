class User < ApplicationRecord
  has_many :interest_users
  has_many :interests, through: :interest_users
end
