require 'rails_helper'

describe 'navigating among lessons' do
  before do
    @section = Section.create(:name => 'Tango')
    @lesson1 = @section.lessons.create(:title => 'Hip Movement', :video_url => "https://www.youtube.com/embed/FCjqQL7Qg1g", :text => 'now days everybody gotta talk like they got something to say', :cheat_sheet => "NO CHEATING", :order_num => 1)
    @lesson2 = @section.lessons.create(:title => 'Attaining the Ocho', :video_url => "https://www.youtube.com/embed/3svvCj4yhYc", :text => 'now days everybody gotta talk like they got something to say', :cheat_sheet => "NO CHEATING", :order_num => 2)
  end

  it 'can go to the next lesson' do
    visit section_lesson_path(@section, @lesson1)
    click_on 'Next'
    expect(page).to have_content @lesson2.title
    expect(page).to_not have_content 'Next'
  end

  it 'can go to the previous lesson' do
    visit section_lesson_path(@section, @lesson2)
    click_on 'Previous'
    expect(page).to have_content @lesson1.title
    expect(page).to_not have_content 'Previous'
  end
end
