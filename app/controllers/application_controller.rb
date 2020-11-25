class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
<<<<<<< HEAD
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :company_id, :role) }
=======
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :company_id, :role, :company)}
  end

  def after_sign_in_path_for(_resource)
    home_path
  end

  def after_sign_up_path_for(_resource)
    home_path
>>>>>>> ce3ddeb7e851f2cae58dbdda6fde9ba83030013b
  end
end
