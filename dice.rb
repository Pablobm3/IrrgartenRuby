#encoding:utf-8
# frozen_string_literal: true

module Irrgarten

  class Dice

    @@MAX_USES = 5
    @@MAX_INTELLIGENCE=10.0
    @@MAX_STRENGTH=10.0
    @@RESURRECT_PROB=0.3
    @@WEAPONS_REWARD=2
    @@SHIELDS_REWARD=3
    @@HEALTH_REWARD=5
    @@MAX_ATTACK = 3
    @@MAX_SHIELD=2

    @@generator = Random.new

    def self.randomPos(max)

       @@generator.rand(0..max)
    end

    def self.whoStarts(nplayers)

       @@generator.rand(0..nplayers)
    end

    def self.randomIntelligence

       @@generator.rand(0.0 .. @@MAX_INTELLIGENCE)
    end

    def self.randomStrength

       @@generator.rand(0..@@MAX_STRENGTH)
    end

    def self.resurrectPlayer
      @@generator.rand(0..@@RESURRECT_PROB) < @@RESURRECT_PROB
    end

    def self.weaponsReward
      @@generator.rand(0..@@WEAPONS_REWARD)
    end

    def self.shieldReward
      @@generator.rand(0..@@SHIELDS_REWARD)
    end

    def self.healthReward()
      @@generator.rand(0..@@HEALTH_REWARD)

    end

    def self.weaponPower()
      @@generator.rand(0..@@MAX_ATTACK)
    end

    def self.shieldPower()
      @@generator.rand(0..@@MAX_SHIELD)
    end

    def self.usesLeft()
      @@generator.rand(0..@@MAX_USES)
    end

    def self.intensity(competence)
      @@generator.rand(0..competence)
    end

    def self.discardElement(usesLeft)

      if usesLeft == 0
        return true
      elsif usesLeft == @@MAX_USES
        return false

      else
      end

      prob = 1.0 - (usesLeft.to_f / @@MAX_USES)

      return prob > @@generator.rand(0.0..1.0)

    end


  end

end

