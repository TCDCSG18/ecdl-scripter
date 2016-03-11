class AnswersController < InheritedResources::Base

  private

    def answer_params
      params.require(:answer).permit(:answer_id, :ans_text, :question_id)
    end
end

