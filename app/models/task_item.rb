class TaskItem < ActiveRecord::Base
  belongs_to :skillset
  has_many :questions

  def absolute_ref
    return self.skillset.category.ecdl_module.module_ref.to_s() + "." +
      self.skillset.category.category_ref.to_s() + "." +
      self.skillset.skillset_ref.to_s() + "." +
      self.task_item_ref.to_s
  end
end
