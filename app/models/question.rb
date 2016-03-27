class Question < ActiveRecord::Base
  after_create :add_review
  before_destroy :find_review
  after_destroy :destroy_orphaned_review

  belongs_to :task_item
  belongs_to :review
  belongs_to :syllabus_item
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers,
    :allow_destroy => true,
    :reject_if     => proc { |answers| answers['text'].blank? && answers['image'].blank? }

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :task_item, presence: true

  def add_review
    @review = Review.new(:question => self, :status => :idle)
    @review.save
    self.review = @review
  end


  def find_review
    @review = self.review
  end

  def destroy_orphaned_review
    @review.destroy
  end
end
