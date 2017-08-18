class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit({ roles: [] },:First_Name, :Last_Name, :email, :password, :password_confirmation)
 end
    devise_parameter_sanitizer.permit(:sign_up) do |seller_params|
    seller_params.permit({ roles: [] },:company_name, :website, :email,:password, :password_confirmation,region:[])
  end
end
end
