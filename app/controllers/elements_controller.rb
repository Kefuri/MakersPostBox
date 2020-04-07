class ElementsController < ApplicationController
  
  def create
    @element_to_add = Element.create(element_params)

    if @element_to_add.save
      flash[:success] = "Your link has been added!"
    else
      flash[:error] = "There was an issue adding your link..."
    end
    redirect_to "/packages/customise/#{session[:current_customized_package]}"
  end

  private

  def element_params
    params.require(:element).permit(:link, :alt_tag, :packages_id)
  end
end
