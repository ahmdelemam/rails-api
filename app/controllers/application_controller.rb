class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: "admin", password: "admin"
  
  rescue_from StandardError do |exception|
    render json: { error: exception.message }, :status => 500
  end
  
end
