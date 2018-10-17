class User < ApplicationRecord
  has_many :interest_users
  has_many :interests, through: :interest_users
  has_many :comments
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :authentication_keys => [:user_id]

  # No use email
  def email_required?
    false
  end
  
  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end

end
