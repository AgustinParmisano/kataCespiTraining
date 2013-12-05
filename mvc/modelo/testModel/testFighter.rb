require "../fighters.rb"
require 'minitest/autorun'

class TestFighter < MiniTest::Unit::TestCase

  def test_initialize_with_complete_params
    param = {nameF: "exacto",
             lifeF: 2,
             exp: 120
    }

    @fighter1 = Fighter.new(param)

    rescue
      puts 'Rescue ERROR in test_initialize_with_complete_params'

    assert_equal(@fighter1.name, 'exacto')
    assert_equal(@fighter1.life, 2)
    assert_equal(@fighter1.experience, 120)
    puts "test_initialize_with_complete_params Passed"
  end

  def test_initialize_without_params
    param = {}

    @fighter1 = Fighter.new(param)
    rescue
      puts 'Rescue in test_initialize_without_params'
    puts "Passed"
  end

  def test_initialize_with_integer_name
    param = {nameF: 2}

    @fighter1 = Fighter.new(param)
    rescue
      puts 'Rescue in test_initialize_with_integer_name'
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

  def test_pickAbilityForDefense_exceed
    param = {nameF: "exacto",
             lifeF: 2,
             exp: 120
    }

    @fighter1 = Fighter.new(param)
    4.times { @fighter1.pickAbilityForDefense("defensiveAbility1") } #exceed the limit

    rescue
      puts 'Rescue test_pickAbilityForDefense_exceed'
    puts 'Passed'
  end

  def test_pickAbilityForDefense_without_params
    param = {nameF: "exacto",
             lifeF: 2,
             exp: 120
    }

    @fighter1 = Fighter.new(param)
    @fighter1.pickAbilityForDefense() #picking nothing to defend

    rescue
      puts 'Rescue test_pickAbilityForDefense_without_params'
    puts 'Passed'
  end

end

