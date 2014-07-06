require 'test/unit'
require_relative '../lib/recipe_source'

class RecipeSourceTest < Test::Unit::TestCase
  def setup
    @recipe_source = RecipeSource.new 'test/recipe_sample.yaml'
  end

  def test_read
    assert_equal [{title: 'チキンライス', url: 'http://cookpad.com/recipe/1'}, {title: "麦飯", url: 'http://cookpad.com/recipe/2'}], @recipe_source.read
  end
end
