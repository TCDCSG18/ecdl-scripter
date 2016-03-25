class EcdlModule < ActiveRecord::Base
  has_many :categories


  def has_reviews?
    self.categories.each do |category|
      if (category.has_reviews?)
        return true
      end
    end
    return false
  end

end
