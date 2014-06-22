#!/usr/bin/env ruby
require 'yaml'
class Recipe
  def initialize source_path
    File.open(source_path, 'r') do |f|
      @recipes = YAML::load(f.read)
    end
  end
    
  def title
    @recipes.first[:title]
  end
end

if __FILE__ == $0
  recipe = Recipe.new 'data/recipes.yaml'
  puts recipe.title
end
