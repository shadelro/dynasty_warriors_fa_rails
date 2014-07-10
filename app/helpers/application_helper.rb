module ApplicationHelper
  def current_league
    @current_league ||= @league || (params[:league_id] && League.find(params[:league_id]))
  end

  def current_team
    Team.find_by(league_id: current_league.id, user_id: current_user.id)
  end

  def current_league_name
    (current_league && current_league.name) || 'Select a league'
  end

  def current_team_display
    "#{current_team.name} (#{number_to_currency(current_team.remaining_salary)})"
  end
end
