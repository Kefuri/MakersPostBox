class PremadeController < ApplicationController
  skip_before_action :require_login
  attr_reader :user

  def dogs
    premade("dogs")
  end

  def cats
    premade("cats")
  end

  def scenery
    premade("scenery")
  end

  def messages
    premade("messages")
  end

  def love
    premade("love")
  end

  private

  def premade(package_name)
    package = Package.find_by(premadepackage: "#{package_name}")
    @resources = Element.where packages_id: package.id
  end
end
