class CompanyQuizzesController < ApplicationController

  def new
    @company_quiz = CompanyQuiz.new
  end

  def create
    if CompanyQuiz.all.empty?
      @company_quiz = CompanyQuiz.new
      @company_quiz.company = params([:company])
      @companyquiz.quiz_id = (CompanyQuiz.last.quiz_id + 1)
    else
      @company_quiz = CompanyQuiz.new
      @company_quiz.company = params([:company])
      @companyquiz.quiz_id = Quiz.first
    end
    @company_quiz.save!
  end

  def safety_refresher; end

  def incident_minimization; end

  def twilio
    client = Twilio::REST::Client.new
    client.messages.create({
                             from: ENV['TWILIO_PHONE_NUMBER'],
                             to: '+16174485001',
                             body: "Please take your weekly safety refresher test here"
                           })

    redirect_to root_path
  end

  private

  def company_quiz_params
    params.require(:company_quiz).permit(:quiz_id, :company_id)
  end


  def twilio_params
  params.require(:refresher_topic)
  end

end
