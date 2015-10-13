require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }
  it { should validate_presence_of :video_url }
  it { should validate_presence_of :text }
  it { should validate_presence_of :cheat_sheet }

end
