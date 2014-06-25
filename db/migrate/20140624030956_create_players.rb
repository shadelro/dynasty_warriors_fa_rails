class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :number
      t.integer :height
      t.integer :weight
      t.integer :age
      t.integer :experience

      t.timestamps
    end
  end
end
