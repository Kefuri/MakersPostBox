def sign_in(
  email = "john@example.com",
  password = "password")

  visit '/users/signin'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Sign In'
end
