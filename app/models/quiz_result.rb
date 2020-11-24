class QuizResult < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  
  validates :score, presence: true
  validates :possible_score, presence:true
  # maybe these should start nil?????
end
