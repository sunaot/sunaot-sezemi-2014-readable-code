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
  RecipeViewer.new.show_recipes Recipe.all
end
