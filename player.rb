# frozen_string_literal: true
module Irrgarten

  class Player

    @@MAX_WEAPONS =2;
    @@MAX_SHIELDS = 3;
    @@INITIAL_HEALTH = 10;
    @@HITS2LOSE = 3;

    def initialize(name,number,intelligence,strength,health)
      @name=name
      @number=number
      @intelligence=intelligence
      @strength=strength
      @health=health
      @consecutiveHits = 0
      @weapons = Array.new
      @shields = Array.new
    end

    def resurrect
      @weapons=[]
      @shields=[]
      @health == @@INITIAL_HEALTH
      @consecutiveHits=0
    end

    def setPos(row,col)
      @row=row
      @col=col
    end

    def dead
      @health=0

    end

    #def attack

    #end

    #def defend(receivedAttack)

    #end

    def to_s
      puts "Player: { Nombre: #{@name.to_s}, Inteligencia: #{@intelligence}, Fuerza: #{@strength}, Salud: #{@health}}"
    end

    private
    #def newWeapon

    #end

    #def newShield

    #end

    #def defensiveEnergy

    #end

    def resetHits
      @consecutiveHits=0
    end

    def gotWounded

      if @health > 0
        @health=-1
      end
      return @health = 0
    end

    def incConsecutiveHits
      @consecutiveHits+=1
    end

    def sumWeapons

    end

    def sumShields

    end



  end

end

