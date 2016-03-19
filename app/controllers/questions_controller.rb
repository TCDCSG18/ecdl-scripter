class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:question_id, :stem, :correct_ans, :task_item_id, answers_attributes:[:id, :answer_id, :ans_text, :question_id, :_destroy])
    end
end

