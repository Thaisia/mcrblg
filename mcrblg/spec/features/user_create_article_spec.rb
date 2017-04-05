require "spec_helper"

feature "Article Creation" do
  before(:all)do
    sign_up
  end

  scenario "Article Creation" do
    visit new_article_path
    expect(page).to have_content 'New Article'
  end
end
