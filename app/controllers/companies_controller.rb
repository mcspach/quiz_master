class CompaniesController < ApplicationController
  def leaderboard
    @company = Company.find(params[:id])
    @drivers = @company.users.where(role: driver)
    @drivers.map do |driver|
      { driver: driver.first_name.capitalise + driver.last_name.capitalise,
<<<<<<< HEAD
        points: driver.get_points}
    end
    # @drivers.order(:points ASC)
=======
        points: driver.get_points }
    end
    @drivers.order('points ASC')
>>>>>>> ce3ddeb7e851f2cae58dbdda6fde9ba83030013b
  end

  def company_quizzes
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end
