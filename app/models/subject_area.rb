class SubjectArea < ApplicationRecord
  validates :content, presence: true

  has_many :quizzes
end
