require 'rails_helper'

describe 'the edit a section process' do
  before do
    @section = Section.create(:name => 'Section')
  end

  it 'edits a section' do
    visit section_path(@section)
    click_on 'Edit'
    fill_in 'Name', :with => 'Psection'
    click_on 'Update Section'
    expect(page).to have_content 'Psection'
  end
end
