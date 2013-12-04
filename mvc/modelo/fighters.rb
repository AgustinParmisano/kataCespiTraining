class Fighter

    attr_accessor :name, :abilities, :life, :points, :experience, :estrategyAttack, :estrategyDefense

    def initialize(name, life, points)
        @name = name
        @abilities = []
        @life = life
        @points = points
        @experience = 0
        @estrategyAttack = []
        @estrategyDefense = []
    end
end
