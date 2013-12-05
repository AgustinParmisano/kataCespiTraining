require "../fighters.rb"
require 'minitest/autorun'

class TestFighter < MiniTest::Unit::TestCase

  #Test if construct is valid
  def test_initialize_with_complete_params
    param ={ name: "nombre",
             defense: 4, # > 0
             attack: 4,  # > 0
             life: 5 #cant be < 2
    }

    @fighter1 = Fighter.new(param[:name],param[:defense],param[:attack],param[:life])

    rescue
      puts 'Rescue ERROR in test_initialize_with_complete_params'

    assert_equal(@fighter1.name, 'nombre')
    assert_equal(@fighter1.life, 5)
    assert_equal(@fighter1.defense, 4)
    assert_equal(@fighter1.attack, 4)
    puts "test_initialize_with_complete_params Passed"

  end

  def test_fight_result_tie
    param1 ={ name: "Scorpio",
             defense: 5, # > 0
             attack: 3,  # > 0
             life: 5 #cant be < 2
    }

    param2 ={ name: "SubZero",
             defense: 3, # > 0
             attack: 5,  # > 0
             life: 5 #cant be < 2
    }

    @scorpio = Fighter.new(param1[:name],param1[:defense],param1[:attack],param1[:life])
    @subzero = Fighter.new(param2[:name],param2[:defense],param2[:attack],param2[:life])

    @andTheWinnerIs = @scorpio.fight(@subzero, 5)
    assert_equal(@andTheWinnerIs, :empate)
    rescue
      puts 'Paso algo raro en test_fight_result_tie'
    puts 'Passed'
  end

end
