class AddElementsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |element|
      element.string :link
      element.string :alt_tag
      element.references :packages, foreign_key: true
    end
  end
end
