# frozen_string_literal: true
module Irrgarten
  class GameState

    def initialize(labyrinthv, players, monsters, currentPlayer, winner, log)
      @labyrinthv = labyrinthv
      @players = players
      @monsters = monsters
      @currentPlayer = currentPlayer
      @winner = winner
      @log = log

    end

    attr_reader :labyrinthv
    attr_reader :players
    attr_reader :monsters
    attr_reader :currentPlayer
    attr_reader :winner
    attr_reader :log

  end

end

