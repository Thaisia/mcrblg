require "spec_helper"

feature "Contact Creation" do
  scenario "Allowing contact page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end
