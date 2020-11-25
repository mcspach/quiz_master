class CompaniesController < ApplicationController
  def leaderboard
    @company = Company.find(params[:id])
    @drivers = @company.users.where(role: driver)
    @drivers.map do |driver|
      { driver: driver.first_name.capitalise + driver.last_name.capitalise,
        points: driver.get_points}
    end
    # @drivers.order(:points ASC)
        points: driver.get_points }
    end
    @drivers.order('points ASC')
  end

  def company_quizzes
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

  def get_points
    @user = current_user
    @current_points = 0
    @user.quiz_results.each do |result|
      points = result.score * 100
      return @current_score += points
    end
    @current_possible_points = 0
    @user.quiz_results.each do |possible|
      possible_points = possible.possible_score * 100
      return @current_possible_points += possible_points
    end
    @remaining_points = 3600 - @current_possible_points
  end
end
