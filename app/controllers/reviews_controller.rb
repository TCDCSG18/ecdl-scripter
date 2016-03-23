class ReviewsController < InheritedResources::Base

  def update
    @review = Review.find(params[:id])
    if params[:commit] == 'Approve Question'
      @review.status = :passed
    elsif params[:commit] == 'Deny Question'
      @review.status = :being_scripted
      @review.comment = params[:comment]
    end
    if @review.save
      redirect_to root_path, notice: 'Review successfully sudmitted!'
    else
      render action: 'edit'
    end
  end
  private

    def review_params
      params.require(:review).permit(:comment, :question_id, :status)
    end
end

