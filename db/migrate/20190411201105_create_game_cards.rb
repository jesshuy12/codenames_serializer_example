class CreateGameCards < ActiveRecord::Migration[5.1]
  def change
    create_table :game_cards do |t|
      t.belongs_to :card, foreign_key: true
      t.belongs_to :game, foreign_key: true
      t.string :identity

      t.timestamps
    end
  end
end
