class GameSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :min_players, :max_players, :recommended_players, :playtime, :complexity, :img_url, :owners
        
    def owners
        self.object.collections.map do |collection|
            {
                name: collection.user.name,
                rating: collection.personal_rating

            }
        end  
    end 
    
end
