class Review < ActiveRecord::Base
  has_one :question
  belongs_to :user
  enum status: [ :idle, :being_scripted, :being_reviewed, :passed ]
end
