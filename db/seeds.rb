# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "collections", force: :cascade do |t|
#     t.string "name"
#     t.integer "personal_rating"
#     t.datetime "last_played_time"
#     t.integer "user_id"
#     t.integer "game_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "games", force: :cascade do |t|
#     t.string "name"
#     t.integer "min_players"
#     t.integer "max_players"
#     t.integer "recommended_players"
#     t.integer "playtime"
#     t.float "complexity"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

alex = User.create(name: "Alex", email: "bureaucratix@gmail.com")
bc = Game.create(name: "BattleCON", min_players: 1, max_players: 4, recommended_players: 2, playtime: 15, complexity: 2.5)
alexbc = Collection.create(user_id: alex.id, game_id: bc.id, personal_rating: 5, last_played_time: Time.now())