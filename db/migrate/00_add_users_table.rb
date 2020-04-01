class AddUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |user|
      user.string :first_name
      user.string :last_name
      user.string :email
      user.string :password
    end
  end
end
