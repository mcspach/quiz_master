class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :company
  has_many :quiz_results
  has_many :quizzes, through: :quiz_results

  # Enables password storage
  # has_secure_password

  #  DONT FORGET TO UNCOMMENT THIS BELOW
  validates :phone_number, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, inclusion: { in: ["manager", "driver"] }
end
