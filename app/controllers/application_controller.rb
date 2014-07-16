class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_league, :current_team

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def current_league
    @current_league ||= @league || (params[:league_id] && League.find(params[:league_id]))
  end

  def current_team
    @current_team ||= current_user && current_league && Team.find_by(league_id: current_league.id, user_id: current_user.id)
  end
end
