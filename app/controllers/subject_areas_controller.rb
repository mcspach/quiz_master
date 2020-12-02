class SubjectAreasController < ApplicationController
  def index
    @subject_areas = SubjectArea.all
  end

  def show
    @subject_area = SubjectArea.find(params[:id])
  end

  private 

  def subject_area_params
    params.require(:subject_area).permit(:title, :content)
  end

  # def fizzbuzz(n)
  #   if (n % 5).zero? && (n % 3).zero?
  #     puts "fizzbuzz"
  #   elsif (n % 3).zero?
  #     puts "fizz"
  #   elsif (n % 5).zero?
  #     puts "buzz"
  #   else
  #     puts n
  #   end
  # end
end
