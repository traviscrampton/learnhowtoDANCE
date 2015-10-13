class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :title, :presence => true
  validates :video_url, :presence => true
  validates :text, :presence => true
  validates :cheat_sheet, :presence => true
  validates :order_num, :presence => true

  default_scope {order('order_num')}

  def previous
    Lesson.where(["order_num < ?", order_num]).last
  end

  def next
    Lesson.where(['order_num > ?', order_num]).first
  end
end
