class QuizResultsController < ApplicationController
  def new
    @score = 0
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_result = QuizResult.new(score: @score, possible_score: @possible_score)
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

  def create
    # how are we caching the instance without finishing this method in js??
    @quiz_result = QuizResult.new(score: @score, possible_score: 300)
    @quiz_result.user = current_user
    @quiz_result.quiz_id = params[:quiz_id]
    if @quiz_result.save
      redirect_to quiz_result_path(@quiz_result)
    else
      redirect_to new_quiz_result_path
    end
  end
end
