class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:question_id, :stem, :correct_ans, :task_item_id)
    end
end

