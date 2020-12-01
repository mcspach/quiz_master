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

  def thankyou
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

  def analytics
    @safely_incident_column_one = []
    @safely_incident_column_two = []
    @column_incorrect_answers = []
    @column_cost_savings = []

    xlsx = Roo::Excelx.new("./config/analytics.xlsx")
    xlsx.each_row_streaming do |row|
      @column_cost_savings << row[4].value
      @safely_incident_column_one << row[1].value
      @safely_incident_column_two << row[2].value
      @column_incorrect_answers << row[3].value
    end
    @safely_incident_column_one = @safely_incident_column_one.drop(1)
    @safely_incident_column_two = @safely_incident_column_two.drop(1)
    @column_incorrect_answers  =   @column_incorrect_answers.drop(1)
  end

end
