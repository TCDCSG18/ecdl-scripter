class SyllabusItem < ActiveRecord::Base
  has_many :questions
  accepts_nested_attributes_for :questions,
    :reject_if     => :all_blank
end
