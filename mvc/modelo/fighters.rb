class Fighter

    attr_accessor :name, :abilities, :life, :pointsA, :pointsD, :experience, :estrategyAttack, :estrategyDefense

    def initialize(params)
        if params.size != 3 or !(params[:nameF].is_a? String) or !(params[:lifeF].is_a? Integer)
          raise
        else
          @name = params[:nameF]
          @abilities = []
          setLife params[:lifeF]
          @pointsA ||= 3
          @pointsD ||= 3
          @experience = params[:exp]
          @estrategyAttack = []
          @estrategyDefense = []
        end
    end

    def setLife(life)
      if life >= 2
        @life = life
      else raise
      end
    end

end
