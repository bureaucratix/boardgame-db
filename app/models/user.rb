class User < ApplicationRecord
    
    has_many :collections
    has_many :games, :through => :collections

    validates :name, uniqueness: true, length: { in: 1..32 }
    validates :email, uniqueness: true


end
