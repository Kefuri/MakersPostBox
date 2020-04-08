class PackagesController < ApplicationController
  skip_before_action :require_login, only: [:show]

  # custom package
  def new_custom
    latest = Package.create(users_id: session[:current_user_id])
    redirect_to("/packages/customise_blank/" + latest.id.to_s)
  end

  def customise_blank
    @package = Package.find(params[:id])
    session[:return_to] ||= request.referer
    @elements = Element.where packages_id: @package.id
    @element_to_add = Element.new()

  end

  # dogs package
  def new_dogs
    latest = Package.create(users_id: session[:current_user_id])
    latest_id = latest.id
    package = Package.find_by(premadepackage: "dogs") 
    @premade_elements = Element.where(packages_id: package.id)
    @premade_elements.each do |element|
      Element.create(link: element.link, alt_tag: element.alt_tag, packages_id: latest_id)
    end
    redirect_to("/packages/customise_dogs/" + latest_id.to_s)
  end

  def customise_dogs
    @element_to_add = Element.new()
    @package = Package.find(params[:id])
    session[:current_customized_package] = @package.id
    @elements = Element.where packages_id: @package.id
  end

  # cats package
  def new_cats
    latest = Package.create(users_id: session[:current_user_id])
    latest_id = latest.id
    package = Package.find_by(premadepackage: "cats") 
    @premade_elements = Element.where(packages_id: package.id)
    @premade_elements.each do |element|
      Element.create(link: element.link, alt_tag: element.alt_tag, packages_id: latest_id)
    end
    redirect_to("/packages/customise_cats/" + latest_id.to_s)
  end

  def customise_cats
    @element_to_add = Element.new()
    @package = Package.find(params[:id])
    session[:current_customized_package] = @package.id
    @elements = Element.where packages_id: @package.id
  end

  # scenery package
  def new_scenery
    latest = Package.create(users_id: session[:current_user_id])
    latest_id = latest.id
    package = Package.find_by(premadepackage: "scenery") 
    @premade_elements = Element.where(packages_id: package.id)
    @premade_elements.each do |element|
      Element.create(link: element.link, alt_tag: element.alt_tag, packages_id: latest_id)
    end
    redirect_to("/packages/customise_scenery/" + latest_id.to_s)
  end

  def customise_scenery
    @element_to_add = Element.new()
    @package = Package.find(params[:id])
    session[:current_customized_package] = @package.id
    @elements = Element.where packages_id: @package.id
  end

  # messages package
  def new_messages
    latest = Package.create(users_id: session[:current_user_id])
    latest_id = latest.id
    package = Package.find_by(premadepackage: "messages") 
    @premade_elements = Element.where(packages_id: package.id)
    @premade_elements.each do |element|
      Element.create(link: element.link, alt_tag: element.alt_tag, packages_id: latest_id)
    end
    redirect_to("/packages/customise_messages/" + latest_id.to_s)
  end

  def customise_messages
    @element_to_add = Element.new()
    @package = Package.find(params[:id])
    session[:current_customized_package] = @package.id
    @elements = Element.where packages_id: @package.id
  end

  # love package
  def new_love
    latest = Package.create(users_id: session[:current_user_id])
    latest_id = latest.id
    package = Package.find_by(premadepackage: "love") 
    @premade_elements = Element.where(packages_id: package.id)
    @premade_elements.each do |element|
      Element.create(link: element.link, alt_tag: element.alt_tag, packages_id: latest_id)
    end
    redirect_to("/packages/customise_love/" + latest_id.to_s)
  end

  def customise_love
    @element_to_add = Element.new()
    @package = Package.find(params[:id])
    session[:current_customized_package] = @package.id
    @elements = Element.where packages_id: @package.id
  end

  def show
    @elements = Element.where packages_id: params[:id]
  end
end
