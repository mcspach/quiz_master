class Quiz < ApplicationRecord
  belongs_to :subject_area
  has_many :companies, through: :company_quizzes
  has_many :quiz_results
  has_many :questions
  has_many :answers, through: :questions
  has_many :users, through: :quiz_results

  validates :title, presence: true, uniqueness: true
  validates :quiz_type, inclusion: { in: ['refresher', 'minimizer'] }
end
