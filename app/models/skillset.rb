class Skillset < ActiveRecord::Base
  belongs_to :category
  has_many :task_items
end
