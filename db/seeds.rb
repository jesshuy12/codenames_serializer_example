# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  Game.create
end

Message.create(text: "hey everyone :wave:", game_id: 1)
Message.create(text: "lets get started", game_id: 1)
Message.create(text: "dope", game_id: 1)
Message.create(text: "hello!!!!", game_id: 1)
Message.create(text: "love this game", game_id: 2)
Message.create(text: "same", game_id: 2)
Message.create(text: "hold on one sec", game_id: 3)
Message.create(text: "ok", game_id: 3)
Message.create(text: "im back", game_id: 3)


[
  "Barn",
  "Scooter",
  "Knight",
  "Cabin",
  "Coffee",
  "Tokyo",
  "Desktop",
  "Monitor",
  "Buzzcut",
  "Power",
  "Button",
  "Workout",
  "Sprint",
  "Puzzle",
  "Charm",
  "Maze",
  "Broom",
  "Brunch",
  "Demon",
  "Phoenix",
  "Ruby",
  "Italy",
  "School",
  "Sweater",
  "Sewer"
].each do |word|
  Card.create(word: word)
end

Game.all.each do |game|
  5.times do
    card = Card.all.sample
    GameCard.create(
      game: game,
      card: card,
      identity: ['blue', 'red', 'bystander'].sample
    )
  end
end

[
  "Jeff",
  "Charlie",
  "Ali",
  "Vera",
  "Evans"
].each do |username|
  Player.create(username: username)
end

GamePlayer.create(game_id: 1, player_id: 1, role: "Spy Master")
GamePlayer.create(game_id: 1, player_id: 2, role: "Player")
GamePlayer.create(game_id: 1, player_id: 3, role: "Player")

GamePlayer.create(game_id: 2, player_id: 4, role: "Spy Master")
GamePlayer.create(game_id: 2, player_id: 5, role: "Player")
GamePlayer.create(game_id: 2, player_id: 1, role: "Player")

GamePlayer.create(game_id: 3, player_id: 2, role: "Spy Master")
GamePlayer.create(game_id: 3, player_id: 3, role: "Player")
GamePlayer.create(game_id: 3, player_id: 4, role: "Player")
