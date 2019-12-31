class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :name
      t.integer :personal_rating
      t.datetime :last_played_time
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
