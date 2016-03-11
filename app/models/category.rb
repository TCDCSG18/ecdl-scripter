class Category < ActiveRecord::Base
  belongs_to :ecdl_module
  has_many :skill_sets
end
