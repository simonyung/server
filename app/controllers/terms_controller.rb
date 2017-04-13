class TermsController < InheritedResources::Base

  private

    def term_params
      params.require(:term).permit()
    end
end

