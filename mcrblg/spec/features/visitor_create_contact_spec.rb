require "spec_helper"

feature "Contact Creation" do

  scenario "Allowing contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')

  end

  scenario "Allowint creating message" do
    visit '/contacts'
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'usercom'
    click_button 'Save Contact'

    expect(page).to have_content 'Done!'
  end
end
