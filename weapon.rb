# frozen_string_literal: true
module Irrgarten
  class Weapon

    def initialize (power, uses)
      @power = power
      @uses = uses
    end

    def attack
      if @uses > 0
        @uses -= 1
        return @power
      end
         0

    end

    def to_s
      "W[ #{@power.to_s}, #{@uses.to_s}]"
    end

    def discard
      Dice.discardElement(@uses)
    end


  end

end

