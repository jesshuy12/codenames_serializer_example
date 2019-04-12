class GameSerializer < ActiveModel::Serializer
  attributes :id, :players, :cards
  has_many :messages

  # has_many :game_cards
  # has_many :cards, through: :game_cards
  #
  # # has_many :game_players
  # has_many :players, through: :game_players

  def players
    object.game_players.map { |gp|  {id: gp.player_id, username: gp.player.username, role: gp.role}}
  end

  def cards
    object.game_cards.map { |gp|  {id: gp.card_id, word: gp.card.word, identity: gp.identity}}
  end

end
