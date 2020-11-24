class CompaniesController < ApplicationController
  def leaderboard
    @company = Company.find(params[:id])
    @drivers = @company.users.where(role: driver)
    @drivers.map do |driver| 
      { driver: driver.first_name.capitalise + driver.last_name.capitalise, 
        points: driver.get_points})
    end
    @drivers.order(:points ASC)
  end

  # def company_quizzes
  # end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end