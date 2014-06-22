require 'yaml'

class RecipeSource
  def initialize filename
    @filename = filename
  end

  def read
    recipes = []
    File.open(@filename, 'r') do |f|
      recipes += YAML::load(f.read)
    end
    recipes
  end
end
