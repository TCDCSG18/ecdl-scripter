class Category < ActiveRecord::Base
  belongs_to :ecdl_module
  has_many :skillsets

  def has_reviews?
    self.skillsets.each do |skillset|
      if (skillset.has_reviews?)
        return true
      end
    end
    return false
  end


end
