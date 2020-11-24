class QuizResultsController < ApplicationController
  def new
    @score = 0
    @possible_score = params([:quiz]).questions.count
    @quiz_result = QuizResult.new(score: @score, possible_score: @possible_score)
  end

  def show
    @quiz_result = QuizResult.find(params[:id])
  end

  def create
    # how are we caching the instance without finishing this method in js??
    # does front-end want variables for Qs and As??
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
