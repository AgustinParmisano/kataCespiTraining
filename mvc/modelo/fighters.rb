class Fighter

    attr_accessor :name, :abilities, :life, :points, :experience, :estrategyAttack, :estrategyDefense

    def initialize(params)
        @name = params[:nameF]
        @abilities = []
        @life = params[:lifeF]
        @points = params[:pointsF]
        @experience = 0
        @estrategyAttack = []
        @estrategyDefense = []
    end
end
