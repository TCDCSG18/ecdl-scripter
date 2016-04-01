class TestScriptsController < InheritedResources::Base

  def show
    @test_script = TestScript.find(params[:id])
    @questions = @test_script.syllabus_item.questions
      .where("belongs_to_test_#{@test_script.syllabus_item.test_scripts.index(@test_script)}" => true)
      .shuffle
    respond_to do |format|
      format.docx { headers["Content-Disposition"] = "attachment; filename=\"" + @test_script.name + ".docx\""  }
    end
  end

  private

    def test_script_params
      params.require(:test_script).permit(:name, :syllabus_item_id)
    end
end

