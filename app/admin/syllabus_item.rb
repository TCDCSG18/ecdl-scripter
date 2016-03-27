ActiveAdmin.register SyllabusItem do

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


  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.has_many :questions, heading: 'Questions', allow_destroy: false, new_record: false do |q, i|
        q.input :task_item, label: i.to_s() + '/80 Task Item:'
        q.input :practical
      end
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit syllabus_item: [ :name, questions_attributes: [:task_item, :practical] ]
    end
    def new
      @syllabus_item = SyllabusItem.new
      80.times { @syllabus_item.questions.build }
      @syllabus_item
    end
  end
end
