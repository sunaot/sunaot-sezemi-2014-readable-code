require 'test/unit'
require_relative '../lib/recipe'
class RecipeTest < Test::Unit::TestCase
  def setup
    @recipe = Recipe.new
  end

  def test_recipe
    assert_equal 'オムライス', @recipe.title
  end
end