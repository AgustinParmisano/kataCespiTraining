class Fighter

	attr_accessor :name, :defense, :attack, :life

	def initialize (name, defense, attack, life)
		@name = name.to_s
		if(defense + attack + life == 13) and (defense.is_a? Integer) and (attack.is_a? Integer) and (life.is_a? Integer)
			setDefense defense
			setAttack attack
			setLife life
		else
			raise
		end	
	end	

	def setLife(life)
      if life >= 2
          @life = life
      else 
          raise
      end
    end

    def setDefense(defense)
      if defense >= 3
          @defense = defense
      else 
          raise
      end
    end

     def setAttack(attack)
      if attack >= 3
          @attack = attack
      else 
          raise
      end
    end

    def fight(otherFighter, rounds)
    	rounds.times{
    		attack(otherFighter)
    		defense(otherFighter)
    	}    	
    end

    def pointsAttack
    	return (@life+@attack)
    end

    def pointsDefense
    	return (@life+@adefense)
    end

    def attack(otherFighter)
    	
    end

    def defense(otherFighter)
    	
    end

end	