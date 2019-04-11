class CreateGamePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :game_players do |t|
      t.belongs_to :game, foreign_key: true
      t.belongs_to :player, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
