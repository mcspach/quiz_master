class CompanyQuiz < ApplicationRecord
  belongs_to :company
  belongs_to :quiz
end
