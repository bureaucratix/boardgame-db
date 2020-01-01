class GameSerializer < ActiveModel::Serializer
    attributes :id, :name, :min_players, :max_players, :recommended_players, :playtime, :complexity, :collections
    has_many :collections
        
    # def owners
    #     self.object.collections.map do |collection|
    #         {
    #             name: collection.owner.name

    #         }
    #     end  
    # end 
    
end
