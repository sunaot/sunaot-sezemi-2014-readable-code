require 'test/unit'
require_relative '../lib/recipe'

class RecipeTest < Test::Unit::TestCase
  def setup
    @recipe = Recipe.new(title: '握り飯')
  end

  def test_recipe
    assert_equal '握り飯', @recipe.title
  end
end
