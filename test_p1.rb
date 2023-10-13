# frozen_string_literal: true
require_relative 'weapon'
require_relative 'shield'
require_relative 'directions'
require_relative 'dice'
require_relative 'game_state'
require_relative 'game_character'
require_relative 'orientation'
require_relative 'monster'
require_relative 'player'

module Irrgarten

  class TestP1

    def main
=begin
      dir = Directions::LEFT
      puts "Direccion es: " +dir.to_s

      game = GameCharacter::MONSTER
      puts "El personaje seleccionado es: " +game.to_s

      ori = Orientation::HORIZONTAL
      puts "La orientacion es: " +ori.to_s




      w1 = Weapon.new(2,1)
      contador = 0
      for i in 0..100
        puts "Descarte arma: "+w1.discard.to_s
        if w1.discard == true
          contador+=1
        end
      end

      puts "Porcentaje de descartes: "+contador.to_s



      w1.attack



      s1 = Shield.new(1,4)

      #for i in 0..10
      # puts "Decarte escudo: " +s1.discard.to_s
      #end

      s1.protect



      s1.discard


      puts w1
      puts s1



      #for i in 0..100
      #puts "Descarte dado: "+Dice.discardElement(4).to_s
      #end



      for i in 1..5
       puts "Inteligencia: "+Dice.randomIntelligence.to_s
      end



      for i in 1..5
        puts "Empieza el personaje nº : "+Dice.whoStarts(4).to_s
      end



      for i in 1..5
        puts "La posicion seleccionada es la nº : "+Dice.randomPos(5).to_s
      end


      for i in 1..5
        puts "Los usos que nos quedan : "+Dice.usesLeft.to_s
      end

      for i in 1..5
        puts "La recompensa de salud es: "+Dice.healthReward.to_s
      end
=end

      m = Monster.new("Sully",5.0,2.0,3.0,)


      m.to_s

      puts m.dead.to_s

      p = Player.new("Pablo", 5.0, 6.0,4.0,5.0)

      p.dead
      p.
      p.to_s
     


    end
  end
end

Irrgarten::TestP1.new.main

