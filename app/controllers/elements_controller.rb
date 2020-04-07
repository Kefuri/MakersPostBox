class ElementsController < ApplicationController
  skip_before_action :require_login
  def create
    @element_to_add = Element.create(element_params)

    if @element_to_add.save
      flash[:success] = "Your link has been added!"
    else
      flash[:error] = "There was an issue adding your link..."
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def element_params
    params.require(:element).permit(:link, :alt_tag, :packages_id)
  end
end
