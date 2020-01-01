class User < ApplicationRecord
    
    has_many :collections
    has_many :games, :through => :collections

    validates :name, length: { in: 1..32 }


end
