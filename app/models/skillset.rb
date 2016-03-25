class Skillset < ActiveRecord::Base
  belongs_to :category
  has_many :task_items

  def has_reviews?
    self.task_items.each do |task_item|
      if (task_item.has_reviews?)
        return true
      end
    end
    return false
  end


end
