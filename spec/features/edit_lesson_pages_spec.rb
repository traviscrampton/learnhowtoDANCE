require 'rails_helper'

describe 'the edit a lesson process' do
  before do
    @section = Section.create(:name => 'Tango')
    @lesson = @section.lessons.create(:title => 'Hip Movement', :video_url => "https://www.youtube.com/embed/FCjqQL7Qg1g", :text => 'now days everybody gotta talk like they got something to say', :cheat_sheet => "NO CHEATING")
  end

  it 'edits a lesson' do
    visit section_path(@section)
    click_on 'Edit'
    fill_in 'Title', :with => 'Bowel Movement'
    click_on 'Update Lesson'
    expect(page).to have_content 'Bowel Movement'
  end

  it 'gives an error if no name given' do
    visit section_path(@section)
    click_on 'Edit'
    fill_in 'Title', :with => ''
    click_on 'Update Lesson'
    expect(page).to have_content 'errors'
  end
end
