require 'rails_helper'

describe "the add a section process" do
  it "adds a new section" do
    visit sections_path
    click_on 'Add Section'
    fill_in 'Name', :with => "Tango"
    click_on 'Create Section'
    expect(page).to have_content 'Tango'
  end
end
