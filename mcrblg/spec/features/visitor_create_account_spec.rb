require "spec_helper"

feature "Account Creation" do
  scenario "Account Creation" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
