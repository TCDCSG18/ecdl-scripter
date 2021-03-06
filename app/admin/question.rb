ActiveAdmin.register Question do

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
  menu priority: 7

  index do
    column :id
    column :stem
    column :image_file_name
    column :practical
    actions
  end

  controller do
    def permitted_params
      params.permit question: [ :stem, :question_ref, :task_item_id, :image_file_name, :image_content_type, :image_file_size,
                              :"image_updated_at(1i)", :"image_updated_at(2i)", :"image_updated_at(3i)", :"image_updated_at(4i)", :"image_updated_at(5i)"]

    end
  end

end
