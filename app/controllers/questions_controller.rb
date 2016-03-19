class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:question_id, :stem, :task_item_id, answers_attributes:[:id, :text, :correct, :question_id, :_destroy])
    end
end

