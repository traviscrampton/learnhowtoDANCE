class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :title, :string
      t.column :video_url, :string
      t.column :text, :text
      t.column :cheat_sheet, :text
      t.column :section_id, :integer

      t.timestamps
    end

    create_table :sections do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
