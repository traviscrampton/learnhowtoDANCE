class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :title, :presence => true
  validates :video_url, :presence => true
  validates :text, :presence => true
  validates :cheat_sheet, :presence => true

end
