class PackagesController < ApplicationController

  def new
    latest = Package.create(users_id: session[:current_user_id])
    latest_id = latest.id
    package = Package.find_by(premadepackage: "dogs") 
    @premade_elements = Element.where(packages_id: package.id)
    @premade_elements.each do |element|
      Element.create(link: element.link, alt_tag: element.alt_tag, packages_id: latest_id)
    end
    redirect_to("/packages/customise/" + latest_id.to_s)
  end

  def customise
    @element_to_add = Element.new()
    p "Element to add"
    p @element_to_add
    @package = Package.find(params[:id])
    p "package"
    p @package
    session[:current_customized_package] = @package.id
    @elements = Element.where packages_id: @package.id
  end

  private

  def add_link_to_package_elements(link)
  end

end
