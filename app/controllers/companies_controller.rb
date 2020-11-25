class CompaniesController < ApplicationController
  def leaderboard
    @company = current_user.company
    @drivers = @company.users.where(role: 'driver')
    @drivers.map do |driver|
      { driver: driver.first_name.capitalize + driver.last_name.capitalize,
        points: get_points(driver) }
    end
    @drivers.order('points ASC')
  end

  def company_quizzes
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

  def get_points(user)
    # @user = current_user
    @current_points = 0
    user.quiz_results.each do |result|
      points = result.score * 100
      return @current_points += points
    end
    @current_possible_points = 0
    user.quiz_results.each do |possible|
      possible_points = possible.possible_score * 100
      return @current_possible_points += possible_points
    end
    @remaining_points = 3600 - @current_possible_points
  end
end
