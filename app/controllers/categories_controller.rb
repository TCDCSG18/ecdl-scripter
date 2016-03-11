class CategoriesController < InheritedResources::Base

  private

    def category_params
      params.require(:category).permit(:category_id, :name, :description, :ecdl_module_id)
    end
end

