class SyllabusItem < ActiveRecord::Base
  has_many :questions
  accepts_nested_attributes_for :questions,
    :allow_destroy => true,
    :reject_if     => :all_blank
end
