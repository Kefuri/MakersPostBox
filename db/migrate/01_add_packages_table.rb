class AddPackagesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |package|
      package.references :users, foreign_key: true
      package.timestamps
    end
  end
end
