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
    def pick_ability_for_defense(ability)
        if @abilitiesChosenD.length < 3 && !ability.is_nil?
            @abilitiesChosenD << ability
        else
            raise
        end
    end

    def pick_ability_for_attack(ability)
        if @abilitiesChosenA.length < 3 && !ability.is_nil?
            @abilitiesChosenA << ability
        else
            raise
        end
    end

    # De las 6 habilidades que cada player eligio (3A y 3D), debe armar
    # una secuencia de 5 ataques y 5 defensas
    def add_to_defense_strategy(ability)
        if @strategyDefense < 5
            @strategyDefense << ability
        else
            raise
        end
    end

    def add_to_attack_strategy(ability)
        if @strategyAttack.length < 5
            @strategyAttack << ability
        else
            raise
        end
    end

    def add_ability(ability)
        @abilities << ability
    end

    def give_me_next_attack
        unless @strategyAttack.is_empty?
            @strategyAttack.shift
        else
            raise
        end
    end

    def give_me_next_defense
        unless @strategyDefense.is_empty?
            @strategyDefense.shift
        else
            raise
        end
    end

    def is_ready?
        @strategyDefense.length == 5 &&
        @strategyAttack.legnth == 5  &&
        @life > 0
    end
        


    def fight_with(anotherWarrior)
    end

end
