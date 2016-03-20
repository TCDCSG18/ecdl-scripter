class QuestionsController < InheritedResources::Base

  def create
    @question = Question.new(question_params)
    if @question.save
      @review = Review.new(:question => @question, :status => :being_reviewed)
      if @review.save
        redirect_to root_path, notice: 'Question submitted successfully'
      else
        # pretty terrible logic for if the review object couldn't be created
        @question.destroy
        render action: 'new'
      end
    else
      render action: 'new'
    end
  end

  private

    def question_params
      params.require(:question).permit(:question_id, :stem, :image, :task_item_id, answers_attributes:[:id, :text, :correct, :image, :question_id, :_destroy])
    end
end

