class Lesson < ActiveRecord::Base
  validates :title, :presence => true
  validates :video_url, :presence => true
  validates :text, :presence => true
  validates :cheat_sheet, :presence => true
  
end
