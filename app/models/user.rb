class User < ApplicationRecord
  has_and_belongs_to_many :interests, dependent: :destroy
end
