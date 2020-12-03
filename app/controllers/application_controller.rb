class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :company_id, :role, :company, :phone_number)}
  end

  def after_sign_in_path_for(_resource)
    home_path
  end

  def after_sign_up_path_for(_resource)
    home_path
  end
  
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
