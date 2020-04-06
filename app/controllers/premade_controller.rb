class PremadeController < ApplicationController
  skip_before_action :require_login
  def dogs
    package = Package.find_by(premadepackage: "dogs") 
    @resources = Element.where packages_id: package.id
  end
end
