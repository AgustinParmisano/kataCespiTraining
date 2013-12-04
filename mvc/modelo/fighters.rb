class Fighter

    attr_accessor :name, :abilities, :life, :pointsA, :pointsD, :experience, :estrategyAttack, :estrategyDefense

    def initialize(params)
        if params.size != 5 or !(params[:nameF].is_a? String) or !(params[:lifeF].is_a? Integer) or !(params[:pointsAF].is_a? Integer) or !(params[:pointsDF].is_a? Integer)
          raise
        else
          @name = params[:nameF]
          @abilities = []
          setLife params[:lifeF]
          setPointsA params[:pointsAF]
          setPointsD params[:pointsDF]
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

    def setPointsA(pointsA)
      if pointsA >= 3
        @pointsA = pointsA
      else raise
      end
    end

    def setPointsD(pointsD)
      if pointsD >= 3
        @pointsD = pointsD
      else raise
      end
    end

end
