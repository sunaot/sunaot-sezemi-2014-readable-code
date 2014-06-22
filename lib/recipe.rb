#!/usr/bin/env ruby
require 'yaml'
class Recipe
  attr_accessor :title
  def initialize recipe
    @title = recipe[:title]
  end
end

if __FILE__ == $0
  recipes = []
  File.open('data/recipes.yaml', 'r') do |f|
    recipes += YAML::load(f.read)
  end
  recipe = Recipe.new recipes.first
  puts recipe.title
end
