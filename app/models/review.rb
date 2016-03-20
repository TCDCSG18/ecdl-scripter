class Review < ActiveRecord::Base
  belongs_to :question
  enum status: [ :being_scripted, :being_reviewed, :passed ]
end
