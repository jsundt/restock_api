class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::Serialization

  before_action :configure_permitted_parameters, if: :devise_controller?



  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :team_id])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:session])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :team_id])
  end
end
