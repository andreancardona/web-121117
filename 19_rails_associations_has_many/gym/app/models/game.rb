class Game < ApplicationRecord
  has_many :player_games
  has_many :players, through: :player_games

  validates :name, { presence: true, uniqueness: true }
end
