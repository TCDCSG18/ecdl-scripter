class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:comment, :question_id, :status)
    end
end

