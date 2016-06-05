require 'rails_helper'

describe "Candy Index" do

  it "Displays a selection of Candy" do
    visit '/'
    expect(page).to have_content "What type of candy would you like to know more about?"
  end

  it "Has a link for each type of Candy" do
    visit '/'
    expect(page).to have_content "Kit Kat"
    expect(page).to have_content "Skittles"
    expect(page).to have_content "M&Ms"
    expect(page).to have_content "Hersey's Kiss"
    expect(page).to have_content "Butterfinger"
    expect(page).to have_content "Gummy Bear"
    expect(page).to have_content "Twizzler"
  end

  it "Correctly displays the requested page for each link" do
    visit '/'
    click_link "Kit Kat"
    expect(page).to have_content "Kit Kat description"
    visit '/'
    click_link "Skittles"
    expect(page).to have_content "Skittles description"
    visit '/'
    click_link "M&Ms"
    expect(page).to have_content "M&Ms description"
    visit '/'
    click_link "Hersey's Kiss"
    expect(page).to have_content "Hersey's Kiss description"
    visit '/'
    click_link "Butterfinger"
    expect(page).to have_content "Butterfinger description"
    visit '/'
    click_link "Gummy Bear"
    expect(page).to have_content "Gummy Bear description"
    visit '/'
    click_link "Twizzler"
    expect(page).to have_content "Twizzler description"
  end

  it "Throws a 404 not found error if the path is not among the ones listed" do
    expect{ visit '/candy/another_candy'}.to raise_error(ActionController::RoutingError)
  end
end
