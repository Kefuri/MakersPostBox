class PremadeController < ApplicationController
  skip_before_action :require_login
  attr_reader :user

  def dogs
    package = Package.find_by(premadepackage: "dogs") 
    @resources = Element.where packages_id: package.id
  end

end
