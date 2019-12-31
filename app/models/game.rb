# t.string "name"
# t.integer "min_players"
# t.integer "max_players"
# t.integer "recommended_players"
# t.integer "playtime"
# t.float "complexity"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false

class Game < ApplicationRecord

    has_many :collections

    validates :name, length: { in: 1..255 }
    validates :min_players, numericality: { allow_nil: true,less_than_or_equal_to: 24, greater_than_or_equal_to: 1, only_integer: true }
    validates :max_players, numericality: { allow_nil: true,less_than_or_equal_to: 24, greater_than_or_equal_to: 1, only_integer: true }
    validates :recommended_players, numericality: { allow_nil: true,less_than_or_equal_to: 24, greater_than_or_equal_to: 1, only_integer: true }
    validates :playtime, numericality: { allow_nil: true, less_than_or_equal_to: 240, greater_than_or_equal_to: 5, only_integer: true }
    validates :complexity, numericality: { allow_nil: true,less_than_or_equal_to: 10, greater_than_or_equal_to: 1, only_integer: true }

end