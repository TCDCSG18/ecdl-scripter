class EcdlModulesController < InheritedResources::Base

  private

    def ecdl_module_params
      params.require(:ecdl_module).permit(:module_id, :name, :description)
    end
end

