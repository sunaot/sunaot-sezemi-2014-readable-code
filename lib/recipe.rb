#!/usr/bin/env ruby
class Recipe
  def title
    'オムライス'
  end
end

if __FILE__ == $0
  recipe = Recipe.new
  puts recipe.title
end
