class RemoveTeamsSalaryCap < ActiveRecord::Migration
  def change
    remove_column :teams, :salary_cap
  end
end
