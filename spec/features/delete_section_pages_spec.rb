require 'rails_helper'

describe 'the delete a section process' do
  before do
    @section = Section.create(:name => 'More Tango')
  end

  it 'deletes a section' do
    visit section_path(@section)
    click_on 'Delete'
    # click_on 'Okay'
    expect(page).to_not have_content 'More Tango'
  end
end
