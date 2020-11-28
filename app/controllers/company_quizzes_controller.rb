class CompanyQuizzesController < ApplicationController

  def new
    @company_quiz = CompanyQuiz.new
  end

  def create
    if CompanyQuiz.all.empty?
      @company_quiz = CompanyQuiz.new
      @company_quiz.company = params([:company])
      @companyquiz.quiz_id = (CompanyQuiz.last.quiz_id + 1)
    else
      @company_quiz = CompanyQuiz.new
      @company_quiz.company = params([:company])
      @companyquiz.quiz_id = Quiz.first
    end
    @company_quiz.save!
  end

  private

  def company_quiz_params
    params.require(:company_quiz).permit(:quiz_id, :company_id)
  end
end
