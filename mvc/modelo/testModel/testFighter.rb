require "../fighters.rb"
require 'minitest/autorun'

class TestFighter < MiniTest::Unit::TestCase

  def test_initialize_with_complete_params
    param = {nameF: "exacto",
             lifeF: 2,
             exp: 120
    }

    @fighter1 = Fighter.new(param)

    assert_equal(@fighter1.name, 'exacto')
    assert_equal(@fighter1.life, 2)
    assert_equal(@fighter1.pointsA, 3)
    assert_equal(@fighter1.pointsD, 3)
    assert_equal(@fighter1.experience, 120)
    puts "Passed"
  end

   def test_initialize_without_params
    param = {}

    @fighter1 = Fighter.new(param)
    rescue
      puts 'Rescue in test_initialize_without_params'
    puts "Passed"
  end

  def test_initialize_with_wrong_params
    param = {nameF: 2,
             lifeF: "esta mal",
             exp: "nononono"
    }

    @fighter1 = Fighter.new(param)
    rescue
      puts 'Rescue in test_initialize_with_wrong_params'
    puts "Passed"
  end

  def test_setLife_lower_param
    param = {nameF: "exacto",
             lifeF: 1, #lower
             exp: 120
    }

    @fighter1 = Fighter.new(param)
    rescue
      puts 'Rescue in test_setLife_lower_param'
    puts "Passed"
  end

  def test_setPoints_lower_param
    param = {nameF: "exacto",
             lifeF: 1,
             exp: 120
    }

    @fighter1 = Fighter.new(param)
    rescue
      puts 'Rescue in test_setLife_lower_param'
    puts "Passed"
  end

end

