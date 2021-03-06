class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :min_players
      t.integer :max_players
      t.integer :recommended_players
      t.integer :playtime
      t.float :complexity

      t.timestamps
    end
  end
end
