class PremadeController < ApplicationController
  def dogs
    package = Package.find_by(premadepackage: "dogs") 
    @resources = Element.where packages_id: package.id
  end
end
