# frozen_string_literal: true
module Irrgarten

  class Labyrinth

    @@BLOCK_CHAR='X'
    @@EMPTY_CHAR='-'
    @@MONSTER_CHAR='M'
    @@COMBAT_CHAR='C'
    @@EXIT_CHAR='E'
    @@ROW='0'
    @@COL='1'

    def initialize(nRows,nCols,exitRow,exitCol)
      @nRows=nRows
      @nCols=nCols
      @exitRow=exitRow
      @exitCol=exitCol
    end





  end

end

