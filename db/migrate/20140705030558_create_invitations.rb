class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :owner_id
      t.string :user_id
      t.string :league_id

      t.timestamps
    end
  end
end
