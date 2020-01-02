# t.string "name"
#     t.integer "personal_rating"
#     t.datetime "last_played_time"
#     t.integer "user_id"
#     t.integer "game_id"

class Collection < ApplicationRecord
    belongs_to :user
    belongs_to :game
    
    validates :personal_rating, numericality: { allow_nil: true,less_than_or_equal_to: 10, greater_than_or_equal_to: 1, only_integer: true }
    validates :game_id, presence: true
    validates :user_id, presence: true
end
