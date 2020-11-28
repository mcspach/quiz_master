class QuizResultsController < ApplicationController
  def new
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_result = QuizResult.new
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_result = QuizResult.new
    @quiz_result.user = current_user
    @quiz_result.quiz = @quiz
    if @quiz_result.save!
      redirect_to results_path
    else
      redirect_to home_path
    end
  end

  def index
    @user = current_user
    @quiz_results = QuizResult.where(user: @user)
    puts @user
    puts @quiz_results
  end

  def show
    @quiz_result = QuizResult.find(params[:id])
  end
end
