class CompanyQuizzesController < ApplicationController

  def new
    @company_quiz = CompanyQuiz.new
  end

  def create
    @company_quiz = CompanyQuiz.new
    @company_quiz.company = params([:company])
    if CompanyQuiz.all.empty?
      @company_quiz.quiz_id = Quiz.first
    else
      @company_quiz.quiz_id = (CompanyQuiz.last.quiz_id + 1)
    end
    @company_quiz.save!
  end

  def safety_refresher; end

  def incident_minimizer; end

  def quiz_selected; end

  def twilio
    client = Twilio::REST::Client.new
    client.messages.create({
                             from: ENV['TWILIO_PHONE_NUMBER'],
                             to: '+16174485001',
                             body: text_body
                           })

    redirect_to quiz_selected_path
  end

  private

  def company_quiz_params
    params.require(:company_quiz).permit(:quiz_id, :company_id)
  end

  def twilio_params
    params.require(:safety_refresher)
    params.require(:incident_minimizer)
  end

  def form_type
    return 'safety_refresher' if params[:safety_refresher]
    return 'incident_minimizer' if params[:incident_minimizer]
  end

  def text_body
    url = nil

    if form_type == 'safety_refresher'
      url = home_url
    else
      url = minimizer_new_url
      # url = url_for(action: 'home', controller: 'users', host: 'http://43fa0b04db42.ngrok.io') 
    end
    return "Please take your weekly safety refresher test: #{url}"
  end
end
