class TaskItem < ActiveRecord::Base
  belongs_to :skillset
  has_many :questions

  def has_reviews?
    self.questions.each do |question|
      if (question.review.reviewing?)
        return true
      end
    end
    return false
  end

end
