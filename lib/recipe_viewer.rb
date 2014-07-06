class RecipeViewer
  def initialize recipes
    @recipes = recipes
  end

  def show_recipes index = nil
    if index.nil?
      show_all_recipes
    else
      show_recipe_at index
    end
  end

  private
  def show_all_recipes
    @recipes.each_with_index do |recipe, index|
      render_recipe index, recipe
    end
  end

  def show_recipe_at index
    render_recipe index, @recipes.at(index)
  end

  def render_recipe index, recipe
    id = "%02d" % (index + 1)
    puts "#{id}: #{recipe.title}"
  end
end
