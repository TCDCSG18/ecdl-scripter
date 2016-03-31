class TestScriptsController < InheritedResources::Base

  def show
    @test_script = TestScript.find(params[:id])
    respond_to do |format|
      format.docx { headers["Content-Disposition"] = "attachment; filename=\"" + @test_script.name + ".docx\""  }
    end
  end

  private

    def test_script_params
      params.require(:test_script).permit(:name, :syllabus_item_id)
    end
end

