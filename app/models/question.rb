class Question < ActiveRecord::Base
  belongs_to :task_item
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers,
    :allow_destroy => true,
    :reject_if     => :all_blank
end
