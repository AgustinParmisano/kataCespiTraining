class Fighter

    attr_accessor :name, :abilities, :life, :experience, :strategyAttack, :strategyDefense

    def initialize(params)
          @name = params[:nameF].to_s
          life = 0
          @experience = 0
          @strategyAttack = []
          @strategyDefense = []
          @abilitiesChosenD = []
          @abilitiesChosenA = []
          @abilities = []
        end
    end

    def life=(life)
      if life >= 2
          @life = life
      else 
          raise
      end
    end

    # Cada player tiene N habilidades, de ellas elige
    # 3 habilidades de defensa y 3 de ataque
    def pickAbilityForDefense(ability)
        if @abilitiesChosenD.length < 3 && ability
            @abilitiesChosenD << ability
        else
            raise
        end
    end

    def pickAbilityForAttack(ability)
        if @abilitiesChosenA.length < 3 && ability
            @abilitiesChosenA << ability
        else
            raise
        end
    end

    # De las 6 habilidades que cada player eligio (3A y 3D), debe armar
    # una secuencia de 5 ataques y 5 defensas
    def addToDefenseStrategy(ability)
        if @strategyDefense < 5
            @strategyDefense << ability
        else
            raise
        end
    end

    def addToAttackStrategy(ability)
        if @strategyAttack.length < 5
            @strategyAttack << ability
        else
            raise
        end
    end

    def addAbility(ability)
        @abilities << ability
    end

    def giveMeNextAttack
        unless @strategyAttack.is_empty?
            @strategyAttack.shift
        else
            raise
        end
    end

    def giveMeNextDefense
        unless @strategyDefense.is_empty?
            @strategyDefense.shift
        else
            raise
        end
    end

    def isReady?
        @strategyDefense.length == 5 &&
        @strategyAttack.legnth == 5  &&
        @life > 0
    end
        


    def fightWith(anotherWarrior)
        

end
