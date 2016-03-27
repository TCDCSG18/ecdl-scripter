class SyllabusItemsController < InheritedResources::Base

  private

    def syllabus_item_params
      params.require(:syllabus_item).permit(:name)
    end
end

