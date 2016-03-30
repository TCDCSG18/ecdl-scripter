class QuestionsController < InheritedResources::Base

  def update
    @question = Question.find(params[:id])
    # should probably add logic here to ensure that question's haven't passed review
    if @question.update_attributes(question_params)
      @review = @question.review
      if @review.update_attributes(:status => :being_reviewed, :user => current_user)
        redirect_to root_path, notice: 'Question submitted successfully'
      else
        render 'edit'
      end
    else
      render 'edit'
    end
  end

  private

    def question_params
      params.require(:question).permit(:question_id, :stem, :image, :task_item_id, :practical, answers_attributes:[:id, :text, :correct, :image, :question_id, :_destroy])
    end
end

