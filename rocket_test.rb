require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
    @rocket = Rocket.new(
      name: "Boop",
      colour: "green",
      flying: true
    )
  end

  def test_initialize_takes_options_name
    # name is given as options argument in setup
    result = @rocket.name
    expected = "Boop"
    assert_equal expected, result
  end

  def test_initialize_takes_options_colour
    # color is given as option argument in setup
    result = @rocket.colour
    expected = "green"
    assert_equal expected, result
  end

  def test_initialize_takes_options_flying
    # flying is given as option to argument in setup
    result = @rocket.flying?
    expected = true
    assert_equal expected, result
  end

  def test_initialize_creates_rocket_with_flying_false
    @rocket = Rocket.new
    result = @rocket.flying?
    expected = false
    assert_equal expected, result
  end

  def test_initialize_creates_rocket_with_name
    @rocket = Rocket.new
    result = (@rocket.name != nil)
    expected = true
    assert_equal expected, result
  end

  def test_initialize_creates_rocket_with_colour
    @rocket = Rocket.new
    result = (@rocket.colour != nil)
    expected = true
    assert_equal expected, result
  end

  def test_initialize_creates_rocket_with_flying
    @rocket = Rocket.new
    result = (@rocket.flying? != nil)
    expected = true
    assert_equal expected, result
  end

  # test name reader method
  def test_name_returns_name
    result = @rocket.name
    expected = "Boop"
    assert_equal expected, result
  end

  # test name writer method
  def test_name_equals_new_name
    @rocket.name = "Cece"
    result = @rocket.name
    expected = "Cece"
    assert_equal expected, result
  end

  def test_colour_returns_colour
    result = @rocket.colour
    expected = "green"
    assert_equal expected, result
  end

  def test_colour_equals_new_colour
    @rocket.colour = "red"
    result = @rocket.colour
    expected = "red"
    assert_equal expected, result
  end

  def test_flying_returns_flying
    result = @rocket.flying?
    expected = true
    assert_equal expected, result
  end

  def test_lift_off_returns_false
    # setup already sets flying to true
    result = @rocket.lift_off
    expected = false
    assert_equal expected, result
  end

  def test_lift_off_returns_true
    @rocket = Rocket.new
    # flying will be false
    result = @rocket.lift_off
    expected = true
    assert_equal expected, result
  end

  def test_lift_off_sets_flying_to_true
    @rocket = Rocket.new
    @rocket.lift_off
    result = @rocket.flying?
    expected = true
    assert_equal expected, result
  end

  def test_land_returns_true
    # flying is already true
    result = @rocket.land
    expected = true
    assert_equal expected, result
  end

  def test_land_returns_false
    @rocket = Rocket.new
    # flying will be false
    result = @rocket.land
    expected = false
    assert_equal expected, result
  end

  def test_land_sets_flying_to_false
    # flying is already true
    @rocket.land
    result = @rocket.flying?
    expected = false
    assert_equal expected, result
  end

  def test_status_returns_flying_message
    # flying is already true
    result = @rocket.status
    expected = "Rocket #{@rocket.name} is flying through the sky!"
    assert_equal expected, result
  end

  def test_status_returns_lift_off_message
    @rocket = Rocket.new
    result = @rocket.status
    expected = "Rocket #{@rocket.name} is ready for lift off!"
    assert_equal expected, result
  end

end
