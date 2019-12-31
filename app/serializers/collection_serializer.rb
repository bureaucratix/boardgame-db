class CollectionSerializer < ActiveModel::Serializer
    attributes :id, :personal_rating, :last_played_time, :owner, :game
        
    def owner
        {
            owner_id: self.object.user.id, 
            owner_name: self.object.user.name
        }
    end 

    def game
        {
            game_name: self.object.game.name,
            min_players: self.object.game.min_players,
            max_players: self.object.game.max_players,
            recommended_players: self.object.game.recommended_players,
            playtime: self.object.game.playtime,
            complexity: self.object.game.complexity
        }
    end

end
