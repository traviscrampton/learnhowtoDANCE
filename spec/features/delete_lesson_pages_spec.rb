require 'rails_helper'

describe 'the delete a lesson process' do
  before do
    @section = Section.create(:name => 'More Tango')
    @lesson = @section.lessons.create(:title => 'Hip Movement', :video_url => "https://www.youtube.com/embed/FCjqQL7Qg1g", :text => 'now days everybody gotta talk like they got something to say', :cheat_sheet => "NO CHEATING", :order_num => 1)
  end

  it 'deletes a lesson' do
    visit section_path(@section)
    click_on 'Delete'
    expect(page).to_not have_content 'Hip Movement'
  end
end
