class Ability

attr_accessor :name :points

  def initialize(name, points)
    @name = name
    @points = points
  end

end

#############################################################################################################################

class HandHit < Ability

	def fight_with(anAbility) 
		anAbility response_to_handHit(self)
	end

end

#############################################################################################################################

class FootFit < Ability

	def fight_with(anAbility) 
		anAbility response_to_footHit(self)
	end

end

#############################################################################################################################

class Gun < Ability

def fight_with(anAbility) 
		anAbility response_to_gun(self)
	end

end	

#############################################################################################################################

class Especial < Ability

	def fight_with(anAbility) 
		anAbility response_to_especial(self)
	end

end	