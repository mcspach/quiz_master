class CompaniesController < ApplicationController
  def leaderboard
    @company = current_user.company
    drivers = @company.users.where(role: 'driver')
    @drivers_list = drivers.map do |driver|
      { name: driver.first_name.capitalize + " " + driver.last_name.capitalize,
        points: get_points(driver) }
    end
    @drivers = @drivers_list.sort_by! { |key| -key[:points] }
    @your_points = get_points(current_user)
  end

  def company_quizzes
    @company_quizzes = CompanyQuiz.where(company: current_user.company)
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
      @current_points += points
    end
    @current_possible_points = 0
    user.quiz_results.each do |possible|
      possible_points = possible.possible_score * 100
      @current_possible_points += possible_points
    end
    @remaining_points = 3600 - @current_possible_points
    return @current_points
  end
end
