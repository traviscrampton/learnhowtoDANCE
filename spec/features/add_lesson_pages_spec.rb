require 'rails_helper'

describe "the add a lesson process" do
  before do
    @section = Section.create(:name => 'MAS TANGO')
  end

  it "adds a new lesson" do
    visit section_path(@section)
    click_on 'Add Lesson'
    fill_in 'Title', :with => "LA PRIMERA LECCIÓN"
    fill_in 'Video url', :with => "HTTPS://WWW.GOOGLE.COM"
    fill_in 'Text', :with => "Butcher dreamcatcher chillwave, organic mlkshk Pitchfork before they sold out. Listicle keytar leggings retro, bitters Portland Carles 3 wolf moon bespoke wolf. Cray swag Helvetica Carles. Fap distillery kale chips wolf +1. Bushwick Godard occupy, synth freegan fixie authentic Etsy roof party actually distillery tattooed Williamsburg. Ethical Etsy fap viral DIY migas, Banksy tilde. Etsy fingerstache flexitarian readymade, direct trade scenester disrupt flannel cred Neutra letterpress pork belly yr chillwave."
    fill_in 'Cheat sheet', :with => "STOP CHEATING"
    click_on 'Create Lesson'
    expect(page).to have_content 'LA PRIMERA LECCIÓN'
  end

  it "gives an error when no title is entered" do
    visit new_section_lesson_path(@section)
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
