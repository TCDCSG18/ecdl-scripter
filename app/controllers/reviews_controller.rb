class ReviewsController < InheritedResources::Base

  def update
    @review = Review.find(params[:id])
    if params[:commit] == 'Approve Question'
      @review.status = :passed
      if @review.save
        redirect_to root_path, notice: 'Review successfully sudmitted!'
      else
        render action: 'edit'
      end
    elsif params[:commit] == 'Deny Question'
      if @review.update_attributes(review_params)
        if @review.update_attributes(:status => :being_scripted)
          redirect_to root_path, notice: 'Review successfully sudmitted!'
        else
          render action: 'edit'
        end
      end
    end
  end

  private

    def review_params
      params.require(:review).permit(:comment, :question_id, :status)
    end
end

