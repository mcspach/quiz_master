class CompanyQuizzesController < ApplicationController

  def new
    @company_quiz = CompanyQuiz.new
  end

  def create
    @company_quiz = CompanyQuiz.new
    @company_quiz.company = params([:company])
    @company_quiz.quiz = params([:quiz])
    @company_quiz.create!
  end

  private

  def company_quiz_params
    params.require(:company_quiz).permit(:quiz_id, :company_id)
  end
end
