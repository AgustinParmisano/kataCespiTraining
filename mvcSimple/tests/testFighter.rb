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

end
