class AboutusController < InheritedResources::Base

  private

  def aboutu_params
    params.require(:aboutu).permit()
  end
end

