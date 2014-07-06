require 'test/unit'
require_relative '../lib/recipe'

class RecipeTest < Test::Unit::TestCase
  def test_title
    recipe = Recipe.new(title: '握り飯')
    assert_equal '握り飯', recipe.title
  end

  def test_url
    recipe = Recipe.new(title: '握り飯', url: 'http://example.com')
    assert_equal 'http://example.com', recipe.url
  end

  def test_all
    recipes = Recipe.all('test/recipe_sample.yaml')
    assert_equal 2, recipes.count
    assert_equal '麦飯', recipes.last.title
  end
end
