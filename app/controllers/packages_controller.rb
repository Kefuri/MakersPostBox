class PackagesController < ApplicationController
  skip_before_action :require_login, only: [:show]

  def customise_blank
    @package = Package.find(params[:id])
    session[:return_to] ||= request.referer
    @elements = Element.where packages_id: @package.id
    @element_to_add = Element.new()
  end

  def customise_premade
    @element_to_add = Element.new()
    @package = Package.find(params[:id])
    session[:current_customized_package] = @package.id
    @elements = Element.where packages_id: @package.id
  end

  def new_custom
    new_package("blank")
  end

  def new_dogs
    new_package("dogs")
  end

  def new_cats
    new_package("cats")
  end

  def new_scenery
    new_package("scenery")
  end

  def new_messages
    lnew_package("message")
  end

  def new_love
    new_package("love")
  end

  def show
    @elements = Element.where packages_id: params[:id]
  end

  private

  def new_package(package_name)
    latest = Package.create(users_id: session[:current_user_id])
    latest_id = latest.id

    if package_name != "blank"
      package = Package.find_by(premadepackage: "#{package_name}") 
      @premade_elements = Element.where(packages_id: package.id)

      @premade_elements.each do |element|
        Element.create(link: element.link, alt_tag: element.alt_tag, packages_id: latest_id)
      end
    end

    redirect_to("/packages/customise_#{package_name}/" + latest_id.to_s)
  end
end
