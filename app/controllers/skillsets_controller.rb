class SkillsetsController < InheritedResources::Base

  private

    def skillset_params
      params.require(:skillset).permit(:skillset_id, :name, :description, :category_id)
    end
end

