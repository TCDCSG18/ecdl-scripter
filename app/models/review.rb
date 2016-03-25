class Review < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  enum status: [ :being_scripted, :being_reviewed, :passed ]


  def reviewing?
    if (self.status == "being_reviewed")
      return true
    end
    return false
  end

end
