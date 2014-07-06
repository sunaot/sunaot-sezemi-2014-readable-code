require 'test/unit'
require_relative '../lib/recipe_viewer'
require 'stringio'

class RecipeTest < Test::Unit::TestCase
  Recipe = Struct.new(:title, :url)

  def setup
    recipes = [
      Recipe.new('foo', 'http://example.com/?id=1'),
      Recipe.new('bar', 'http://example.com/?id=2'),
      Recipe.new('baz', 'http://example.com/?id=3')
    ]
    @viewer = RecipeViewer.new(recipes)
  end

  def test_show_all_recipes
    assert_equal "01: [foo](http://example.com/?id=1)\n02: [bar](http://example.com/?id=2)\n03: [baz](http://example.com/?id=3)\n", capture_output { @viewer.show_recipes }.first
  end

  def test_show_a_recipe
    assert_equal "02: [bar](http://example.com/?id=2)\n", capture_output { @viewer.show_recipes 1 }.first
  end

  def test_out_of_recipe_index_limit
    pend
    assert_equal ['', 'invalid index is given'], capture_output { @viewer.show_recipes 3 }
  end
end
