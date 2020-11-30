class QuizResultsController < ApplicationController

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_result = QuizResult.new
    @should_show = false
  end

  def create
    score = 0
    quiz_result_params[:score] != "" ? score = quiz_result_params[:score] : score
    @quiz_result = QuizResult.new(score: score)
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
    @team_rank = 1
    @your_rank = 1
    @points_today = @todays_quiz.score * 100
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
