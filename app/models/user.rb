class User < ApplicationRecord
  has_many :interests, dependent: :destroy
end
