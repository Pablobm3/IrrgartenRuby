# frozen_string_literal: true
module Irrgarten

  class Monster

    @@INTIAL_HEALTH=5


    def initialize(name,intelligence,strength,health)
      @name = name
      @intelligence = intelligence
      @strength = strength
      @health = health

    end

    def dead
      @health==0

    end

    #def attack

    #end

    def setPos(row,col)
      @row=row
      @col=col
    end

    def to_s
      puts "Monstruo { Nombre: #{@name.to_s}, Inteligencia: #{@intelligence}, Fuerza: #{@strength}, Salud: #{@health}}"
    end

    #def defend(receivedattack)

    #end

    private

    def gotWounded
      @health =-1
    end

  end


end
