class TaskItemsController < InheritedResources::Base

  private

    def task_item_params
      params.require(:task_item).permit(:taskitem_id, :name, :description, :skillset_id)
    end
end

