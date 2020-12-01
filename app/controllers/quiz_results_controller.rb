class QuizResultsController < ApplicationController

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_result = QuizResult.new
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
    # The only thing hard-coded is Team Ranks. Everything else is real!
    @user = current_user
    @refreshers = Quiz.where(quiz_type: 'refresher')
    @quiz_results = QuizResult.where(user: @user)
    @todays_quiz = @quiz_results.last

    @points_today = @todays_quiz.score * 100

    @company = current_user.company
    drivers = @company.users.where(role: 'driver')
    @drivers_list = drivers.map do |driver|
      { name: driver.first_name,
        points: get_points(driver) }
    end
    @drivers = @drivers_list.sort_by! { |key| -key[:points] }
    
    match = @drivers.find { |l| l[:name] == @user.first_name }
    @your_rank = @drivers.index(match) + 1
  end

  def show
    @quiz_result = QuizResult.find(params[:id])
  end

  def minimizer_new
    @minimizer_quiz = Quiz.find(params[:quiz_id])
  end

  private

  
  def quiz_result_params
    params.require(:quiz_result).permit(:quiz_id, :score, :possible_score, :user_id)
  end

  def get_points(user)
    
    @current_points = 0
    user.quiz_results.each do |result|
      points = result.score * 100
      @current_points += points
    end
    # @current_possible_points = 0
    # user.quiz_results.each do |possible|
    #   possible_points = possible.possible_score * 100
    #   @current_possible_points += possible_points
    # end
    # @remaining_points = 3600 - @current_possible_points
    return @current_points
  end

  def ordinal(n)
    ending = case n % 100
             when 11, 12, 13 then 'th'
             else
               case n % 10
               when 1 then 'st'
               when 2 then 'nd'
               when 3 then 'rd'
               else 'th'
               end
             end
    return ending
  end
end
