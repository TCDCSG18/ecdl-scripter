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
  menu priority: 1, label: "Syllabuses"


  form partial: "form"

  show do
    panel "" do
      render partial: "show", locals: {syllabus_item: syllabus_item}
    end
  end

  controller do
    def permitted_params
      params.permit syllabus_item: [ :name,
                                     questions_attributes: [:id, :task_item_id, :practical,
                                                            :belongs_to_test_0, :belongs_to_test_1,
                                                            :belongs_to_test_2, :belongs_to_test_3, ],
                                     test_scripts_attributes: [:id, :name] ]
    end
    def new
      @syllabus_item = SyllabusItem.new
      # using 8 here instead of 80 for testing, no need to make 7trillion questions when testing functionality
      8.times { @syllabus_item.questions.build }
      4.times { @syllabus_item.test_scripts.build }
      @syllabus_item
    end
  end
end
