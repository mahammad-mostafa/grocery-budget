class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from ActiveRecord::RecordNotFound do
    redirect_to(root_url, alert: 'Record not found')
  end
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to(root_url, alert: exception.message)
  end

  def index
    redirect_to(root_url, alert: 'Invalid path')
  end

  protected

  def configure_permitted_parameters
    resource_menu({ 'sessions' => 'Login', 'registrations' => 'Register' }, root_path, 'Submit')
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name])
  end

  def resource_menu(title, previous = nil, action = nil)
    @title = title
    @previous = previous if previous
    @action = action if action
  end
end
