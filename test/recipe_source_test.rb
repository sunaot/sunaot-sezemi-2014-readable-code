require 'test/unit'
require_relative '../lib/recipe_source'

class RecipeSourceTest < Test::Unit::TestCase
  def setup
    @recipe_source = RecipeSource.new 'test/recipe_sample.yaml'
  end

  def test_read
    assert_equal [{title: 'チキンライス'}, {title: "麦飯"}], @recipe_source.read
  end
end
