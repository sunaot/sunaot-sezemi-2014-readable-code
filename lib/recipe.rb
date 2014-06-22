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
  recipes = RecipeSource.new('data/recipes.yaml').read
  recipes.each do |recipe|
    r = Recipe.new recipe
    puts r.title
  end
end
