class ApplicationController < ActionController::Base
  before_action :set_currencies
  include Pundit
  protect_from_forgery

  #authentication
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  #authorization
  before_action :authenticate_user!
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :cpf, :username])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_currencies
    @currencies = Currency.all
  end

end
