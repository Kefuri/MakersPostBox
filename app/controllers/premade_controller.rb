class PremadeController < ApplicationController
  skip_before_action :require_login
  attr_reader :user

  def dogs
    package = Package.find_by(premadepackage: "dogs") 
    @resources = Element.where packages_id: package.id
  end

  def cats
    package = Package.find_by(premadepackage: "cats") 
    @resources = Element.where packages_id: package.id
  end

  def scenery
    package = Package.find_by(premadepackage: "scenery") 
    @resources = Element.where packages_id: package.id
  end

  def messages
    package = Package.find_by(premadepackage: "messages") 
    @resources = Element.where packages_id: package.id
  end

  def love
    package = Package.find_by(premadepackage: "love") 
    @resources = Element.where packages_id: package.id
  end
end
