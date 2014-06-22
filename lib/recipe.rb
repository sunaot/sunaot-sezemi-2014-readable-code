#!/usr/bin/env ruby
require 'yaml'
require 'recipe_source'
require 'recipe_viewer'

class Recipe
  attr_accessor :title
  def initialize recipe
    @title = recipe[:title]
  end
end

if __FILE__ == $0
  recipes = RecipeSource.new('data/recipes.yaml').read
  RecipeViewer.new.show_recipes recipes.map {|recipe| Recipe.new(recipe) }
end
