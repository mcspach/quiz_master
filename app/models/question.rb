class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers

  validates :content, presence: true
  validates :explanation, presence: true
end
