class ContactusController < InheritedResources::Base

  private

    def contactu_params
      params.require(:contactu).permit()
    end
end

