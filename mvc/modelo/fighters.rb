class Fighter
    attr_accessor :name

    def initialize(name)
        @name = name
        @abilities = []
        @life = 0
        @points = 0
        @experience = 0
        @estrategyAttack = []
        @estrategyDefense = []
    end
end
