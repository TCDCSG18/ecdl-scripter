class SyllabusItem < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :test_scripts, dependent: :destroy
  accepts_nested_attributes_for :questions,
    :reject_if     => :all_blank
  accepts_nested_attributes_for :test_scripts,
    :reject_if     => :all_blank
end
