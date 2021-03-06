ActiveAdmin.register User do

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
  menu priority: 12

  index do
    column :id
    column :email
    column :approved
    actions
  end

  controller do
    def permitted_params
      params.permit user: [ :approved ]
    end
  end

  # limit fields in user new/edit form
  form do |f|
    f.semantic_errors
    inputs do
      input :email
      input :approved
    end
    f.actions
  end

  filter :email
  filter :id
  filter :approved

end
