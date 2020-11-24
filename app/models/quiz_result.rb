class QuizResult < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  
  validates :score, :default => 0
  validates :possible_score, :default => 0
end
