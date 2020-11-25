class SubjectArea < ApplicationRecord
  validates :title, inclusion: { in: ["Pre-Inspection", "Post-Inspection", "Distracted Driving", "Proper Procedure"] }
  validates :content, presence: true

  has_many :quizzes
end
