class Question < ActiveRecord::Base
  belongs_to :task_item
  belongs_to :review
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers,
    :allow_destroy => true,
    :reject_if     => :all_blank

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
