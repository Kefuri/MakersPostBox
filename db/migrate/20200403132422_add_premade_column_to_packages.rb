class AddPremadeColumnToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :premadepackage, :string,  :null => true
  end
end
