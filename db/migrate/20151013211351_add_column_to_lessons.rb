class AddColumnToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :order_num, :integer
  end
end
