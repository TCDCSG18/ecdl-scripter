class TaskItem < ActiveRecord::Base
  belongs_to :skillset
  has_many :questions
end
