class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # ↓ nameのみをkeysに入れるとemailでsignupができない現象が発生する。
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  end
end
