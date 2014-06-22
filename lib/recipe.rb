#!/usr/bin/env ruby
require 'yaml'
require 'recipe_source'

class Recipe
  attr_accessor :title
  def initialize recipe
    @title = recipe[:title]
  end
end

if __FILE__ == $0
  recipes = RecipeSource.read 'data/recipes.yaml'
  recipe = Recipe.new recipes.first
  puts recipe.title
end
