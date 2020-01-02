class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :email
    has_many :games

    def games 
        
        self.object.collections.map do |collection|
        {
            game_id: collection.game.id,
            name: collection.game.name, 
            description: collection.game.description,
            min_players: collection.game.min_players,
            max_players: collection.game.max_players,
            recommended_players: collection.game.recommended_players,
            playtime: collection.game.playtime,
            complexity: collection.game.complexity,
            rating: collection.personal_rating,
            last_played_time: collection.last_played_time,
            img_url: collection.game.img_url
        }
        end 
    end 
end
