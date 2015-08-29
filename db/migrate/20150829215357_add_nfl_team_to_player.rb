class AddNflTeamToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :nfl_team, :string
  end
end
