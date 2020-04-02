def sign_up(
  first_name = "John",
  last_name = "Smith",
  email = "john@example.com",
  password = "password")

  visit '/'
  fill_in 'First name', with: first_name
  fill_in 'Last name', with: last_name
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Sign Up'
end
