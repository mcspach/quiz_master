class QuizResultsController < ApplicationController

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_result = QuizResult.new
    @hammer = "hammer"
  end

  def create
    @quiz_result = QuizResult.new(quiz_result_params)
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_result.user = current_user
    @quiz_result.quiz = @quiz
    @quiz_result.possible_score = @quiz.questions.count
    if @quiz_result.save!
      redirect_to results_path
    else
      redirect_to home_path
    end
  end

  def index
    @user = current_user
    @quiz_results = QuizResult.where(user: @user)
    @todays_quiz = @quiz_results.last
  end

  def show
    @quiz_result = QuizResult.find(params[:id])
  end

  def minimizer_new
    @minimizer_quiz = Quiz.find(params[:quiz_id])
  end 

  private

  # params.require(:quiz_result).
  def quiz_result_params
    params.require(:quiz_result).permit(:quiz_id, :score, :possible_score, :user_id)
  end
end
