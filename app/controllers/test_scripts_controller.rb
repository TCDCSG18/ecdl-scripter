class TestScriptsController < InheritedResources::Base

  private

    def test_script_params
      params.require(:test_script).permit(:name, :syllabus_item_id)
    end
end

