class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  protect_from_forgery with: :exception
 	before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_notifications, if: :user_signed_in?

  def set_notifications
    @notifications = Notification.where(recipient: current_user).recent
  end
	protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit({ roles: [] },:First_Name, :Last_Name, :email,:mobile, :password, :password_confirmation)
 end
    devise_parameter_sanitizer.permit(:sign_up) do |seller_params|
    seller_params.permit({ roles: [] },:company_name, :website, :email,:password, :password_confirmation,region:[])
  end
  
end
end
