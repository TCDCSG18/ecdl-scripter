ActiveAdmin.register Answer do

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
  menu priority: 8

  index do
    column :id
    column :text
    column :image_file_name
    column :correct
    column :created_at
    column :updated_at
    actions
  end

  controller do
    def permitted_params
      params.permit answer: [ :question_id, :text, :correct, :image_file_name, :image_content_type, :image_file_size,
                              :"image_updated_at(1i)", :"image_updated_at(2i)", :"image_updated_at(3i)", :"image_updated_at(4i)", :"image_updated_at(5i)"]
    end
  end

end
