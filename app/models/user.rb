class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enables password storage
  has_secure_password
  # Validate that both email and phone are always there
  validates :email, :phone, presence: true
end
