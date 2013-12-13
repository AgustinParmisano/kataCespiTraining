class Fighter

	attr_accessor :name, :defense, :attack, :life

	def initialize (name, defense, attack, life)
		@name = name.to_s
		if(defense + attack + life == 13) and (defense.is_a? Integer) and (attack.is_a? Integer) and (life.is_a? Integer)
			setDefense defense
			setAttack attack
			setLife life
		else
      raise ArgumentError.new("Only numbers are allowed")
		end
	end

	def setLife(life)
      if life >= 2
          @life = life
      else
        raise ArgumentError.new("Fighter die")
      end
    end

    def setDefense(defense)
      if defense >= 3
          @defense = defense
      else
        raise ArgumentError.new("Point of defence greather than 3")
      end
    end

     def setAttack(attack)
      if attack >= 3
          @attack = attack
      else
          raise ArgumentError.new("Point of attack greather than 3")
      end
    end

    def fight(otherFighter, rounds)
    	rounds.times{
    		attack(otherFighter)
    		defense(otherFighter)
    	}
    	if life > otherFighter.life
    		return self
    	elsif life < otherFighter.life
    			return otherFighter
    	else
    		return :empate
    	end
    end

    def pointsAttack
    	return (@life+@attack)
    end

    def pointsDefense
    	return (@life+@defense)
    end

    def substractLife(value)
    	@life -= value
    end

    def attack(otherFighter)
    	if pointsAttack > otherFighter.pointsDefense
    		otherFighter.substractLife(pointsAttack - otherFighter.pointsDefense)
    	end
    end

    def defense(otherFighter)
    	if otherFighter.pointsAttack > pointsDefense
    		substractLife(otherFighter.pointsAttack - pointsDefense)
    	end
    end

end
