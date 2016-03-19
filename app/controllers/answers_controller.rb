class AnswersController < InheritedResources::Base

  private

    def answer_params
      params.require(:answer).permit(:correct, :text, :image, :question_id)
    end
end

