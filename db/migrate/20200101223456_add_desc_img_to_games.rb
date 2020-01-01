class AddDescImgToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :description, :text
    add_column :games, :img_url, :string
  end
end

