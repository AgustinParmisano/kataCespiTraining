class Fighter

    attr_accessor :name, :abilities, :life, :experience, :strategyAttack, :strategyDefense

    def initialize(params)
        if params.size != 3 or !(params[:nameF].is_a? String) or !(params[:lifeF].is_a? Integer)
          raise
        else
          @name = params[:nameF]
          @abilities = []
          life = params[:lifeF]
          @experience = params[:exp]
          @strategyAttack = []
          @strategyDefense = []
          @abilitiesChosenD = []
          @abilitiesChosenA = []
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
        if @abilitiesChosenD.length < 3
            @abilitiesChosenD << ability
        else
            raise
        end
    end

    def pickAbilityForAttack(ability)
        if @abilitiesChosenA.length < 3
            @abilitiesChosenA << ability
        else
            raise
        end
    end

    # De las 6 habilidades que cada player posee (3A y 3D), debe armar
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

end
