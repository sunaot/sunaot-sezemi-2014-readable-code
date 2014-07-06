require 'test/unit'
require_relative '../lib/recipe_viewer'
require 'stringio'

class RecipeTest < Test::Unit::TestCase
  Recipe = Struct.new(:title)

  def setup
    recipes = [
      Recipe.new('foo'),
      Recipe.new('bar'),
      Recipe.new('baz')
    ]
    @viewer = RecipeViewer.new(recipes)
  end

  def test_show_all_recipes
    assert_equal "01: foo\n02: bar\n03: baz\n", capture_output { @viewer.show_recipes }.first
  end

  def test_show_a_recipe
    assert_equal "02: bar\n", capture_output { @viewer.show_recipes 1 }.first
  end

  def test_out_of_recipe_index_limit
    pend
    assert_equal ['', 'invalid index is given'], capture_output { @viewer.show_recipes 3 }
  end
end
