class RecipeViewer
  def show_recipes recipes
    recipes.each do |recipe|
      puts recipe.title
    end
  end
end
