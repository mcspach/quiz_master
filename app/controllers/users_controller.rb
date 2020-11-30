class UsersController < ApplicationController
  def stats
    @user = current_user
    # percentage correct
    percent_array = []
    QuizResult.joins(:quiz).where("quizzes.quiz_type = 'refresher'").each do |result|
      percent_array << (result.score * 100 / result.possible_score)
    end
    @percent_correct = ( percent_array.sum / percent_array.size )

    # percentage complete
    @refreshers = CompanyQuiz.joins(:quiz).where("quizzes.quiz_type = 'refresher'")
    @my_refreshers = @user.quiz_results.all.count
    @percent_complete = ( @my_refreshers.size * 100 / @refreshers.size )
  end

  def finished
    @user = current_user
  end

  def rewards
    @user = current_user
    @current_points = 0
    @user.quiz_results.each do |result|
      points = result.score * 100
      @current_points += points if result.quiz.quiz_type == 'refresher'
    end
    @current_possible_points = 0
    @user.quiz_results.each do |possible|
      possible_points = possible.possible_score * 100
      @current_possible_points += possible_points if possible.quiz.quiz_type == 'refresher'
    end

    @remaining_points = (3600 - @current_points)
    @div_points = @remaining_points * 100 / 3600
  end

  def home
    @user = current_user
    @quiz_id = CompanyQuiz.joins(:quiz).where("quizzes.quiz_type = 'refresher'").last.quiz.id
  end
end
