require 'rails_helper'

describe "the add a section process" do
  it "adds a new section" do
    visit sections_path
    click_on 'Add Section'
    fill_in 'Name', :with => "Tango"
    click_on 'Create Section'
    expect(page).to have_content 'Tango'
  end

  it "gives an error when no name is entered" do
    visit new_section_path
    click_on 'Create Section'
    expect(page).to have_content 'errors'
  end
end
