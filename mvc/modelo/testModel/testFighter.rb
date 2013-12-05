require "../fighters.rb"
require 'minitest/autorun'

class TestFighter < MiniTest::Unit::TestCase

  def test_initialize_with_complete_params
    param = {nameF: "exacto",
             lifeF: 2,
             pointsAF: 3,
             pointsDF: 3,
             exp: 120
    }

    @fighter1 = Fighter.new(param)

    assert_equal(@fighter1.name, 'exacto')
    assert_equal(@fighter1.life, 2)
    assert_equal(@fighter1.pointsA, 3)
    assert_equal(@fighter1.pointsD, 3)
    assert_equal(@fighter1.experience, 120)
  end

   def test_initialize_without_params
    param = {}

    @fighter1 = Fighter.new(param)

    assert_equal(@fighter1.name, 'exacto')
    assert_equal(@fighter1.life, 2)
    assert_equal(@fighter1.pointsA, 3)
    assert_equal(@fighter1.pointsD, 3)
    assert_equal(@fighter1.experience, 120)
  end
end

