class Review < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  enum status: [ :being_scripted, :being_reviewed, :passed ]
end
