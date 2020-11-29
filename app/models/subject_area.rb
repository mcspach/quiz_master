class SubjectArea < ApplicationRecord
  validates :title, inclusion: { in: ["Pre-Inspection", "Post-Inspection", "Distracted Driving", "Proper Procedure", "Turning Left", "Stopping Safely", "Checking Brakes", "Load Restraint"] }
  validates :content, presence: true

  has_many :quizzes
end
