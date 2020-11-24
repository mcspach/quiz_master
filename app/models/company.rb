class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :users
  has_many :company_quizzes
  has_many :quizzes, through: :company_quizzes
end
