class Question < ActiveRecord::Base
  belongs_to :task_item
  has_many :answers
end
