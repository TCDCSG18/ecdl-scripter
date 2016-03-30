ActiveAdmin.register TaskItem do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  menu priority: 6

  controller do
    def permitted_params
      params.permit task_item: [ :name, :description, :task_item_ref, :skillset_id ]
    end
  end

end
