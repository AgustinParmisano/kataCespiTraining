class Fighter

    attr_accessor :name, :abilities, :life, :points, :experience, :estrategyAttack, :estrategyDefense

    def initialize(params)
        if params.size != 4 or !(params[:nameF].is_a? String) or !(params[:lifeF].is_a? Integer)
          raise
        else
          @name = params[:nameF]
          @abilities = []
          @life = params[:lifeF]
          @points = params[:pointsF]
          @experience = params[:exp]
          @estrategyAttack = []
          @estrategyDefense = []
        end
    end
end
