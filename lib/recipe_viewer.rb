class RecipeViewer
  def show_recipes recipes
    recipes.each_with_index do |recipe, index|
      id = "%02d" % (index + 1)
      puts "#{id}: #{recipe.title}"
    end
  end
end
