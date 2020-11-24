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
end
