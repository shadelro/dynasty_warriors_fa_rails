class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :user_id
      t.string :name
      t.integer :rank
      t.integer :salary_cap
      t.integer :remaining_salary

      t.timestamps
    end
  end
end
