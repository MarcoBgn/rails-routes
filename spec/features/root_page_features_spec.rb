require 'rails_helper'

describe "Main Page" do
  it "Prompts the user for a username" do
    visit '/'
    expect(page).to have_content "Enter a username"
  end

  it "Has a form field for username" do
    visit '/'
    fill_in 'session_username', with: "Guest User"
    click_button 'Start Chatting'
    expect(page).to have_content "Welcome Guest User"
    fill_in 'chat-speak', with: "Test Text"
    expect(page).not_to have_content "Unable to find Button (Placeholder)"
  end
end
