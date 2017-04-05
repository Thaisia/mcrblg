def sign_up
  visit new_user_registration_path
  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'usercom'
  fill_in :user_password, :with => '76543219'
  fill_in :user_password_confirmation, :with => '76543219'
  click_button 'Sign up'
end
