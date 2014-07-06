#!/usr/bin/env ruby
require 'yaml'
require 'recipe_source'
require 'recipe_viewer'

class Recipe
  DEFAULT_PATH = 'data/recipes.yaml'

  attr_accessor :title
  def initialize recipe
    @title = recipe[:title]
  end

  def self.all path = DEFAULT_PATH
    recipes = RecipeSource.new(path).read
    recipes.map {|recipe| new(recipe) }
  end
end

if __FILE__ == $0
  if ARGV.size > 0
    index = ARGV.shift
    raise ArgumentError.new("Expect Integer (0..) for argument values, but #{index.to_i} is given.") if index.to_i =~ /\d+/
    RecipeViewer.new(Recipe.all).show_recipes index.to_i
  else
    RecipeViewer.new(Recipe.all).show_recipes
  end
end
