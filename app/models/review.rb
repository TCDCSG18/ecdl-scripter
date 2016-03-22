class Review < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  enum status: [ :being_scripted, :being_reviewed, :passed ]

  def self.pending_for_user(user)
    where(user: user, status: being_scripted)
  end

  def self.pending_for_reviewer(reviewer)
    where(reviewer: reviewer, status: being_reviewed)
  end
end
